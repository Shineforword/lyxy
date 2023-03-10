## 数值

```dart
int
整数值，其取值通常位于 -253 和 253 之间。

int class

double
64-bit (双精度) 浮点数，符合 IEEE 754 标准。

double class

num
int 和 double 都是 num 的子类。

num class

十进制、十六进制
int a = 1001;
int b = 0xF;
print([a, b]);

[1001, 15]

```

## 科学计数法
```dart
num a = 2e3;
print([a]);

[2000]
```

## 数值转换

```dart
// string -> int
// string -> double
int a = int.parse('123');
double b = double.parse('1.223');

// int -> string
// double -> string
String a = 123.toString();
String b = 1.223.toString();
print([a, b]);

// double -> int
double a = 1.8;
int b = a.toInt();
print(b);
```

## 位运算 二进码十进数 8421 码
``` dart
& 与运算
1 0 1 0          10
0 0 1 0          2
--------
0 0 1 0          2

var a = 10;
var b = 2;
print(a & b);
2
| 或运算

1 0 1 0          10
0 0 1 0          2
--------
1 0 1 0          10
var a = 10;
var b = 2;
print(a | b);
10
const USE_LEFT = 0x1;
const USE_TOP = 0x2;
const USE_LEFT_TOP = USE_LEFT | USE_TOP;
var result = USE_LEFT | USE_TOP;
print(result);
assert(USE_LEFT_TOP == result);

~ 非运算

0 1 0 0 1          +9 二进制 最高位 0 整数 1 负数
0 0 1 1 0          补码
1 1 0 0 1          取反
1 1 0 1 0          加1
--------
1 1 0 1 0          -10

var a = 9;
print(~a);

4294967286

^ 异或
1 0 1 0          10
0 0 1 0          2
--------
1 0 0 0          8

var a = 10;
var b = 2;
print(a ^ b);

8
//计算机中可以用来取反色

```

## 移位运算符
```dart
<< 左移
0 0 0 1          1 二进制
0 0 1 0          左移一位 2
0 1 0 0          左移一位 4
1 0 0 0          左移一位 8

var a = 1 << 1;
print(a);
2
>> 右移
1 0 0 0          8 二进制
0 1 0 0          右移一位 4
0 0 1 0          右移一位 2
0 0 0 1          右移一位 1

向右移动一位
var a = 8 >> 1;
print(a);

4
```