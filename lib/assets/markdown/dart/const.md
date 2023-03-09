## const  & final
### 相同点: 1.类型声明可以省略
```dart
final String a = 'ducafecat';
final a = 'ducafecat';

const String a = 'ducafecat';
const a = 'ducafecat';

```

### 相同点: 2.初始后不能再赋值
```dart
final a = 'ducafecat';
a = 'abc';(×)

const a = 'ducafecat';
a = 'abc';(×)
```

### 相同点: 3.不能和 var 同时使用
```dart
final var a = 'ducafecat';(×)
const var a = 'ducafecat';(×)
```

### 不相同点: 1.const需要确定的值
```dart
final dt = DateTime.now();(√)
const dt = const DateTime.now(); (×)
```

### 不相同点: 2.const不可变性可传递
```dart
final List ls = [11, 22, 33];
ls[1] = 44;(√)
const List ls = [11, 22, 33];
ls[1] = 44;(×)

```
### 不相同点: 3.const内存中重复创建(相同内容引用同一空间) - 优化内存
```dart
// identical 检测是否使用同一空间
final a1 = [11 , 22];
final a2 = [11 , 22];
print(identical(a1, a2)); false

const a1 = [11 , 22];
const a2 = [11 , 22];
print(identical(a1, a2)); true 

```