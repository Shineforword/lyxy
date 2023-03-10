## 操作符
```dart

描述	操作符
后缀操作	expr++ expr-- () [] . ?.
前缀操作	-expr !expr ~expr ++expr --expr
乘除	* / % ~/
加减	+ -
位移	<< >>
按位与	&
按位异或	^
按位或	|
类型操作	>= > <= < as is is!
相等	== !=
逻辑与	&&
逻辑或	||
是为为空	??
三目运算	expr1 ? expr2 : expr3
级联	..
赋值	= *= /= ~/= %= += -= <<= >>= &= ^= |= ??=
```

## 算术操作符
```dart 

操作符	解释
+	加号
–	减号
-expr	负号
*	乘号
/	除号
~/	除号，但是返回值为整数
%	取模
```

## 相等相关的操作符

```dart

操作符	解释
==	相等
!=	不等
>	大于
<	小于
>=	大于等于
<=	小于等于

```
## 类型判定操作符
```dart

操作符	解释
as	类型转换
is	如果对象是指定的类型返回 True
is!	如果对象是指定的类型返回 False

```

## 条件表达式
```dart

操作符	解释
condition ? expr1 : expr2	如果 condition 是 true，执行 expr1 (并返回执行的结果)； 否则执行 expr2 并返回其结果。
expr1 ?? expr2	如果 expr1 是 non-null，返回其值； 否则执行 expr2 并返回其结果。
  bool isFinish = true;
  String txtVal = isFinish ? 'yes' : 'no';

  bool isFinish;
  isFinish = isFinish ?? false;
  or
  isFinish ??= false;
```

## 位移操作
```dart
操作符	解释
&	逻辑与
|	逻辑或
^	逻辑异或
~expr	取反
<<	左移
>>	右移
```

## 级联操作符 ..
```dart

//操作符	解释
  .. //可以在同一个对象上 连续调用多个函数以及访问成员变量。
  StringBuffer sb = StringBuffer();
  sb
  ..write('hello')
  ..write('word')
  ..write('\n')
  ..writeln('doucafecat');
```

## 其他操作符
```dart

操作符	解释
()	使用方法 代表调用一个方法
[]	访问 List 访问 list 中特定位置的元素
.	访问 Member 访问元素，例如 foo.bar 代表访问 foo 的 bar 成员
?.	条件成员访问 和 . 类似，但是左边的操作对象不能为 null，例如 foo?.bar 如果 foo 为 null 则返回 null，否则返回 bar 成员

```