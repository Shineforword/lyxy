## 继承
```dart
//实现继承
class Phone {
  void startup() {
    print('开机');
  }
  void shutdown() {
    print('关机');
  }
}

class AndroidPhone extends Phone {
}

void main() {
  var p = AndroidPhone();
  p.startup();
  p.shutdown();
}

//开机
//关机
```

## 父类调用

```dart
class Phone {
  void startup() {
    print('开机');
  }

  void shutdown() {
    print('关机');
  }
}

class AndroidPhone extends Phone {
  @override
  void startup() {
    super.startup();
    print('AndroidPhone 开机');
  }
}

void main() {
  var p = AndroidPhone();
  p.startup();
}

//开机
//AndroidPhone 开机
```

## 调用父类构造
```dart
class Mobile {
  int number;
  Mobile(this.number);
  void showNumber() {
    print('010-$number');
  }
}

class AndroidPhone extends Mobile {
  AndroidPhone(int number) : super(number);
}

void main() {
  var p = AndroidPhone(12345678);
  p.showNumber();
}

//010-12345678
//可调用父类的 构造函数
```
## 重写超类函数
```dart
class Mobile {
  int number;
  Mobile(this.number);
}

class AndroidPhone extends Mobile {
  AndroidPhone(int number) : super(number);

  @override
  void noSuchMethod(Invocation mirror) {
    print('被重写 noSuchMethod');
  }
}

void main() {
  dynamic p = AndroidPhone(12345678);
  p.showNumber111();
}

//被重写 noSuchMethod
```

## 继承抽象类的问题
```dart
abstract class IPhone {
  void startup() {
    print('开机');
  }

  void shutdown();
}

class AndroidPhone extends IPhone {
  @override
  void startup() {
    super.startup();
    print('AndroidPhone 开机');
  }

  @override
  void shutdown() {
    print('AndroidPhone 关机');
  }
}

void main() {
  var p = AndroidPhone();
  p.startup();
  p.shutdown();
}

//开机
//AndroidPhone 开机
//AndroidPhone 关机
```