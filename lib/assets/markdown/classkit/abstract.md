## 抽象
## abstract 类、函数、成员
```dart
//普通类前加 abstract
abstract class Person {
  String name = 'ducafecat';
  void printName() {
    print(name);
  }
}
```

## 不能直接 new 实例化
```dart
var p = Person();
p.printName();

//Abstract classes can't be instantiated.
//Try creating an instance of a concrete subtype.

```

## 继承方式使用
```dart
class Teacher extends Person {
}

var p = Teacher();
p.printName();

//ducafecat
```

## 接口方式使用
```dart

//定义

abstract class Person {
  String name = '';
  void printName();
}

class Teacher implements Person {
  @override
  String name;

  Teacher(this.name);

  @override
  void printName() {
    print('Teacher: $name');
  }
}

//实例

var p = Teacher("ducafecat");
p.printName();

//ducafecat
```