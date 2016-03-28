com1k equ 3fbh
data segment
p1 db"system ready!$"
p3 db"communication error!$"
recrow db 2;接收光标所在行
reccol db 0;接收光标所在列
sndRowNo db 10;发送光标所在行
sndClmNo db 0;发送光标所在列
data ends
code segment
assume cs:code,ds:data
main proc far
start:	push ds
		xor ax,ax
		push ax
		mov ax,data
		mov ds,ax
     ;下面是要自己写的内容1==========================
	 ;写LCR
        mov dx, 3fbh
		mov al, 80h;DLAB=1
		out dx, al
     ;写分频系数，设置波特率为9600bps，根据波特率因子为64，求的分频系数为3
		mov dx, 3f8h;DLL的I地址 
		mov al, 3H;分频系数低字节
		out dx, al;写入DLL
		mov dx, 3f9h;DLM的地址
		mov al, 0;分频系数高字节
		out dx, al;写入DLM
		
		mov dx, 3fbh;LCR的地址 
	;根据要求：有7位数据位，1位停止位，假设使用偶校验，同时为DL位回写0，所以需要向LCR写入00011010b=1AH
		mov al, 1ah
		out dx, al;DL置零后，3F8H对应于THR/RBR，3F9H对应于IER

     ;置FIFO允许，接收器复位，发送器复位的控制字为07H
		mov dx, 3fah
		mov al, 07h
		out dx, al
     ;1============================================
		mov dx,3fch
		mov al,03h
		out dx,al
		mov dx,3f9h
		mov al,0
		out dx,al
     
		call back
		mov dx,offset p1
		mov ah,9
		int 21h
;下面是要自己写的内容2====================
;发送部分
;包括发送状态判断
send:
		mov dx, 3fdh;读取LSR
		in al, dx
		test al, 9eh;出错检测:使用10011110B检查四个错误：FIFO出错、帧格式错误、奇偶校验错误和覆盖错误
		jnz errorJmp;出错时，跳转至出错处理，直接跳转时出现Jump out of range错误，故进行过渡跳转
		test al, 01h;检查接收缓冲寄存器中是否有数据，即测试LSR的DR位是否为1
		jnz receive;该寄存器中有数据则进行接收处理
		test al, 20h;检查发送保持寄存器是否为空，即测试LSR的THRE位是否为1
		jz send;寄存器中数据未被取走，不能发送数据，返回send继续查询
;发送保持寄存器为空，可以发送数据，以下为发送数据部分
;从键盘读入要发送的字符
		mov ah, 0bh;使用21号DOS中断0bh功能，检测是否有键盘输入
		int 21h
		cmp al, 0;若有输入，则存于al中
		jz send;无字符输入，返回send继续查询
	
;设置发送字符部分的光标行列号
		mov dh, sndRowNo
		mov dl, sndClmNo
		mov bh, 0
		mov ah, 2
		int 10h
;16号BIOS中断0号功能，带回显的字符输入
		mov ah, 0
		int 16h
		
		cmp al, 0dh;若为回车，则行数+1，列数归0
		jz sndRowNoInc
;若非回车符，则列数+1，当列数超过最大值时，向行数进位
		inc dx
		jmp saveSndPos
sndRowNoInc:
		inc dh
		mov dl, 0
saveSndPos:
		mov sndRowNo, dh
		mov sndClmNo, dl
;有输入则发送
		mov dx, 3f8h
		out dx, al
;2==========================================
        cmp al,'*';当输入“*”号时退出
        jz stop
        mov bx,7
        mov ah,14
        int 10h
	
jmp send;发送完数据返回send，继续轮询RBR和THR
errorJmp:
	jmp error
;下面是自己写的内容3=======================
;接收部分
;包括接收状态判断
;出错状态判断
;在从send的循环进入receive之前已经进行接收状态判断和出错检测，此处处理接收字符的逻辑即可
receive:
		mov dx, 3f8h;读接收缓冲寄存器
		in al, dx
		and al, 7fh;传送7位数据位，则仅取低7位
	
;设置接收字符部分的光标行列号
		mov dh, recrow
		mov dl, reccol
		mov bh, 0
		mov ah, 2
		int 10h
;显示字符
		cmp al, 0dh;如果是回车，则不显示字符
		jz setPos
		cmp al, 0ah;如果是换行，则不显示字符
		jz setPos
;非回车和换行符则进行显示
		mov ah, 0ah
		mov bh, 0
		mov bl, 0
		mov cx, 1
		int 10h
setPos:
;接收到回车或换行符时重新设置接收字符部分的光标行列号
		cmp al, 0dh;若为回车符，则行数+1，列数归0
		jz rcvRowNoInc
		;若非回车符，则列数+1，当列数超过最大值时，向行数进位
		inc dx
		jmp saveRcvPos
rcvRowNoInc:
		inc dh
		mov dl, 0
saveRcvPos:
		mov recrow, dh
		mov reccol, dl
;3=======================================
        cmp al,'*'
        jz stop
        mov bx,7
        mov ah,14
        int 10h
        jmp send

error:	call back
   ;设置接收光标行列号
		mov dh, recrow
		mov dl, reccol
		mov bh, 0
		mov ah, 2
		int 10h
	    ;显示出错信息
        mov dx,offset p3
        mov ah,9
        int 21h
	;重新设置接收光标行列号，行数+1，列数归0
		inc dh
		mov dl, 0
		mov recrow, dh
		mov reccol, dl
        jmp send
stop:ret
main endp

back proc near
        push ax
        push dx
        mov dl,0dh
        mov ah,2
        int 21h
        mov dl,0ah
        mov ah,2
        int 21h
        pop dx
        pop ax
        ret
back endp
code ends
end start
