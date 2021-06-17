# C语言程序设计Moodle-自测题

> 2020年10月17日起。
>
> 此课程的自测题不允许检查（仅刚提交后可回顾试卷中的答案，之后“不允许”，直接复制URL也会提示“您无权回顾该测验”），故复制于此备用。

> 题目的选项既有“abcd”又有“ABCD”，且顺序随机，故统一不标选项代号，改用无序列表。

[toc]

## 自测1：C语言入门

从编写C语言程序到运行得到结果，程序员需要依次进行的过程中【    】。

选择一项：

- [✓]编辑，编译，链接，运行

- [✗]编辑，修改，编译，运行

- [✗]编译，修改，链接，运行

- [✗]编译，链接，修改，运行

---

下列标识符中，不属于C语言关键字的是【    】。

选择一项：

- [✓]main

- [✗]switch

- [✗]int

- [✗]while

---

以下C语言用户标识符中，非法的是【    】

选择一项：

- [✗]AaBb

- [✗]a_b

- [✗]_b

- [✓]a--b

---

C语言是【    】

选择一项：

- [✗]面向对象的程序设计语言

- [✗]面向机器的程序设计语言

- [✓]面向过程的程序设计语言

- [✗]面向函数的程序设计语言

---

本课程中使用的 Dev C++ 是一种【    】。

选择一项：

- [✗]C++语言
- [✗]最新版本的C语言
- [✗]符合C11标准的C语言
- [✓]集成开发环境

## 自测2：编程入门

在C语言中，使用变量时应遵循的基本规则是【    】。

选择一项：

- [✗]没有统一规定

- [✗]先使用，后说明

- [✗]不说明，直接用

- [✓]先说明，后使用

---

从C语言的语法上讲，printf 是【    】。

选择一项：

- [✓]函数名

- [✗]变量名

- [✗]关键字

- [✗]数据类型

---

C语言中符号 \ 的含义是【    】。

选择一项：

- [✓]转义符

- [✗]取整运算

- [✗]除运算

- [✗]整除运算

---

在程序的 printf 中用到了符号 “\n”，它的含义是【    】。

选择一项：

- [✓]控制输出另起一个新行
- [✗]标志 printf 输出的结束
- [✗]在屏幕上输出字符 \ 和 n
- [✗]printf 中必须的一个标志

## 综合测试1

有以下程序，其中k的处值为８进制数，则程序运行后输出结果是

```c
#include <stdio.h>

int main()
{
    int k=011;
    printf("%d\n", k++);
}
```

 选择一项：

- [✗]12

- [✗]10

- [✓]9

- [✗]11

---

以下叙述中，正确的是

选择一项：

- [✗]C语言程序是由过程和函数组成的

- [✗]C语言函数不可以单独编译

- [✗]C语言中除了main函数，其他函数不可作为单独文件形式存在

- [✓]C语言函数可以嵌套调用

---

以下关于C语言数据类型使用的叙述中，错误的是

选择一项：

- [✗]若要保存带有多位小数的数据，应使用双精度类型

- [✗]若要出来如“人员信息”等含有不同类型的相关数据，应自定义结构类型

- [✗]若要准确无误差的表示自然数，应使用整数类型

- [✓]若只处理“真”和“假”两种逻辑值，应使用逻辑类型

---

以下C语言用户标识符中，非法的是【    】

选择一项：

- [✗]_b

- [✓]a--b

- [✗]a_b

- [✗]AaBb

---

有以下程序：

```c
#include <stdio.h>

int main ()
{
    char a, b, c, d;
    scanf("%c%c", &a, &b);
    c = getchar();
    d = getchar();
    printf("%c%c%c%c\n", a, b, c, d);
}
```

当执行程序时，按下列方式输入数据（从第1列开始，`<cr>`代表回车）

```
12<cr>
34<cr>
```

则结果是


选择一项：

- [✗]`1234`

- [✗]`12`

- [✓]`12<cr>3`

- [✗]`12<cr>34`

---

与如下嵌套的 if 语句等价的语句是

```c
if (a < b )

  if ( a < c ) k = a;

  else k = c;

 else

  if ( b < c ) k = b;

  else k = c;
```

选择一项：

- [✓]k = ( a < b ) ? ( ( a < c ) ? a : c ) : ( ( b < c ) ? ( b : c );

- [✗]k = ( a < b ) ? ( b < c ) ? a : b ) : ( ( b > c ) ? b : c );

- [✗]k = ( a < b ) ? a : b; k = ( b < c ) ? b : c ;

- [✗]k = ( a < b ) ? a : b; k = (a < c ) ? a : c );

---

下列选项中，能正确定义数组的语句是
A）`int num[0..2008];`
B）`int num[];`
C）`int N=2008; int num[N];`
D）

```c
#define N 2008
int num[N];
```

选择一项：

- [✗]正确

- [✗]正确

- [✗]正确

- [✓]正确

---

若有定义：double a=22; int i=0, k=18; ，则不符合C语言规定的赋值语句是

选择一项：

- [✗]i = (a+k) <= (i+k);

- [✗]i != a ;

- [✓]i = a % 11;

- [✗]a = i++

---

下列语句组中，正确的是

选择一项：

- [✗]char s[7]; s={"Olympic"};

- [✗]char s[7]; s="Olympic";

- [✗]char * s; s={"Olympic"};

- [✓]char * s; s="Olympic";

---

以下选项中，与

```c
if (a==1) a=b;
else a++;
```

语句功能不同的 switch 语句是

A）`switch( a) { case 1: a=b; break; default: a++; }`

B）` switch( a==1 ) { case 0: a=b; break; case 1: a++; }`

C）`switch ( a ) { default: a++; break; case 1: a=b; }`

D） `switch ( a==1 ) { case 1: a=b; break; case 0: a++; }`

选择一项：

- [✗]正确

- [✓]正确

- [✗]正确

- [✗]正确

---

有以下程序，运行结果是

```c
#include <stdio.h>
void fun(char *c, int d )
{
    *c = *c+1;
    d = d+1;
    printf("%c,%c,", *c, d);
}

int main()
{
    char b='a', a='A';
    fun(&b, a);
    printf("%c,%c\n", b, a);
}
```

选择一项：

- [✗]a,B,B,a

- [✗]a,B,a,B

- [✓]b,B,b,A

- [✗]b,B,B,A

---

有如下程序。该程序的运行结果是

```c
#include <stdio.h>
main()
{
    int i, j, m=1;
    for(i=1; i < 3; i++)
    {
        for(j=3; j > 0 ; j--)
        {
            if ( i * j > 3 ) break;
            m *= i * j;
        }
    }
    printf("m=%d\n", m);
}
```

选择一项：

- [✓]m=6

- [✗]m=5

- [✗]m=4

- [✗]m=2

---

若 a 是数值类型，则逻辑表达式`(a==1)||(a != 1)`的值是

选择一项：

- [✗]2

- [✗]不知道 a 的值，无法确定

- [✗]0

- [✓]1

---

有如下程序，运用后结果是

```c
#include <stdio.h>
main()
{
    int a=1, b=2;
    for ( ; a<8; a++ )
    {
        b += a;
        a += 2;
    }
    printf("%d,%d\n", a, b);
}
```

 选择一项：

- [✗]7,11

- [✓]10,14

- [✗]9,18

- [✗]8,11

---

以下关于 return 语句的叙述中，正确的是

选择一项：

- [✗]一个自定义函数中必须有一条 return 语句

- [✗]没有 return 语句的自定义函数在执行结束时不能返回到调用处

- [✗]定义为 void 类型的函数中可以有带返回值的 return 语句

- [✓]一个自定义函数中可以根据不同情况设置多条 return 语句

---

以下关于C语言的叙述中，正确的是

选择一项：

- [✗]在C语言算术表达式的书写中，运算符两侧的运算数类型必须一致

- [✗]C语言的数值常量中夹带空格不影响常量值的正确表示

- [✓]C语言中的注释不可以夹在变量名或关键字的中间

- [✗]C语言的变量可以在使用之前的任何位置进行定义

## 综合测试2

若定义 int ( * pt )[3];，则下列说法中，正确的是


选择一项：

- [✗]定义了一个名为 * pt、具有三个元素的整型数组

- [✓]定义了一个为pt的指针变量，它可以指向每行有三个元素的二维数组

- [✗]定义了基类型为int的三个指针变量

- [✗]定义了基类型为int的具有三个元素的指针数组pt

---

设有定义double a[10],*s=a;，以下能够代表数组元素a[3]的是

选择一项：

- [✗]`(*s)[3]`

- [✗]`*s[3]`

- [✓]`*(s+3)`

- [✗]`*s+3`

---

若有以下定义和语句

```c
char s1[10]="abcd!", *s2="\n123\\";
printf("%d %d\n", strlen(s1), strlen(s2) );
```


则输出结果是


选择一项：

- [✓]5 5

- [✗]10 5

- [✗]10 7

- [✗]5 8

---

设有定义：

```c
struct complex
{ int real, nureal; } data1 ={1,8}, data2;
```

则下列赋值语句中，错误的是


选择一项：

- [✗]data2.real = data1.real;

- [✗]data2.real = data1.nureal;

- [✓]data2 = (2,6);

- [✗]data2 = data1;

---

有以下定义和语句：

```c
struct workers
{
    int num; char name[20]; char c;
    struct
    { int data; int month; int year;} s;
};
struct workers w, *pw;
```


能给 w 中year成员赋1980的语句是


选择一项：

- [✗]* pw.year = 1980;

- [✗]w.year = 1980;

- [✗]pw->year = 1980;

- [✓]w.s.year = 1980;

---

有以下程序：

```c
#include <stdio.h>
int main()
{
    FILE * fp, char str[10];
    fp = fopen("myfile.dat", "w");
    fputs("abc", fp);
    fclose( fp );
    fp = fopen("myfile.dat", "a+");
    fprintf(fp, "%d",28);
    rewind( fp );
    fscanf(fp, "%s", str);
    puts(str);
    fclose(fp);
}
```

程序运行结果是


选择一项：

- [✗]abc

- [✓]abc28

- [✗]因类型不一致而出错

- [✗]28c

## 期末考试

已知： int x = 1, y;

执行赋值语句：y = ++x > 5 && ++x < 10;
后，变量x的值是【  】。


选择一项：

- [✗]4

- [✗]3

- [✓]2

- [✗]1

---

已知有： 

      int i；
      double f；

则以下表达式中正确的是【    】


选择一项：

- [✗]`f % i`

- [✗]`int( f % i )`

- [✓]`( int ) f % i`

- [✗]`( int f ) % i`

---

若要定义一个在其他源程序文件的函数中可以使用的变量 a，则变量 a 的存储类型应该是【    】


选择一项：

- [✗]静态变量

- [✗]自动变量

- [✗]寄存器变量

- [✓]外部变量

---

已知：  

    long a = 0X12345678;
    
    char ch = a;
    
    printf( "%d\n", ch );

输出结果为【  】。

选择一项：

- [✗]78

- [✗]12

- [✗]18

- [✓]120

---

要判断 char 型变量 m 是否是数字，应使用的表达式是【    】

选择一项：

- [✗]  `0<= m && m <=9`

- [✗]  `0<= m <=9`

- [✓]` '0' <=m && m <= '9' `

- [✗]  `"0" <= m && m <= "9"`

---

下列语句中，能正确定义一个字符串的语句是【  】。


选择一项：

- [✓]`char str[]= "\0"；` 
- [✗]`char str=""；`
- [✗]`char str="kx43"；`
- [✗]` char str[]= '\064'；`

---

执行库函数 fopen 打开文件时发生错误，则函数返回值为【  】。

选择一项：

- [✓]NULL

- [✗]文件缓冲区地址

- [✗]EOF

- [✗]1

---

在下面的程序段中，能正确计算 10！的程序段是【  】。

选择一项：

- [✗]

  ```c
  int i = 1, s = 1;
  
  do{
      s = s * ++i;
  }while( i <= 10 );
  ```

- [✓]

  ```c
  int i = 1, s = 1;
  do{
      s = s * i++;
  } while( i <= 10 );
  ```

- [✗]

  ```c
  int i = 0, s = 1;
  do{
      s = s * i++;
  }while( i <= 10 );
  ```

- [✗]

  ```c
  int i = 0, s = 1;
  do{
      s = s * ++i;
  } while( i <= 10 );
  ```

---

已知：`int a[ ] = {1,2,3,4}, y, *p = &a[3]；`

则执行语句

```c
  y = (*--p)++；
```

之后, 变量y的值为【  】。




选择一项：

- [✓]3

- [✗]2

- [✗]1

- [✗]4

---

若有定义：int (*pt)[3];

则下列说法中，正确的是【  】


选择一项：

- [✗]个元素的整型数组

- [✓]个整型元素的一维数组

- [✗]定义了基类型为 int 的具有3个元素的指针数组 pt

- [✗]定义了基类型为 int 的 3 个指针变量

## 后备箱

首先复制以下代码（可Ctrl+A, Ctrl+C）到控制台。

```javascript
questionList = "";
isFirst = true;
for(var q of document.querySelectorAll('div[class="formulation clearfix"]')){
    if(! isFirst){
        questionList += "---\n\n";
    }
    else{
        isFirst = false;
    }
    // 题干
    questionList += q.querySelector('div.qtext').innerText;
    questionList += "\n\n";
    //一般是"选择一项："
    questionList += q.querySelector('div.prompt').innerText;
    questionList += "\n\n";
    // 选项
    for(var a of q.querySelectorAll('div.answer > div')){
        if(a.querySelector("input").checked){
            questionList += "- [✓]";
        }
        else{
            questionList += "- [✗]";
        }
        // 下一句若不用lastChild，会带一个<span>（abcdABCD等）
        questionList += a.querySelector("label").lastChild.textContent;
        questionList += "\n\n";
    }
}
copy(questionList)
```

然后~~复制结果，~~再粘贴[^怎么粘贴？]至相应位置。

[^怎么粘贴？]: Ctrl+Shift+V（粘贴为纯文本），不然不会按Markdown解释。

