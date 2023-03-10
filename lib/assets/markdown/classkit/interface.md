## static 静态变量
```dart
//static 定义
//声明

class People {
  static String name = 'ducafecat';
}
//调用

//静态变量可以通过外部直接访问,不需要将类实例化

print(People.name);

//ducafecat

```

## 函数内部访问

```dart
//实例化后的类也可以访问该静态变量

//声明

class People {
  static String name = 'ducafecat';
  void show() {
    print(name);
  }
}
//调用
People().show();
// ducafecat
```

## 静态方法
```dart
//静态方法可以通过外部直接访问

//声明

class People {
  static String name = 'ducafecat';
  static void printName() {
    print(name);
  }
}
//调用

People.printName();

//ducafecat
```