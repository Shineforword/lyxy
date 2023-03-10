## 多继承

### 多继承 with
```dart
//多继承 with
//定义类
class Phone {
  void call() {
    print('Phone is calling...');
  }
}

class Android {
  void playStore() {
    print('Google play store');
  }
}

class Ios {
  void appleStore() {
    print('Apply store');
  }
}
```

### with 混入
```dart
class Xiaomi with Phone, Android, Ios {}
//采用 with ... , .... , ... 方式 mixin 入多个类功能
```

###  执行
```dart
void main(List<String> args) {
  var p = Xiaomi();
  p.call();
  p.playStore();
  p.appleStore();
}
//Phone is calling...
//Google play store
//Apply store
```

## 函数重名冲突
### Android Ios 加入 call 函数
```dart
class Android {
  void playStore() {
    print('Google play store');
  }

  void call() {
    print('Android phone is calling...');
  }
}

class Ios {
  void appleStore() {
    print('Apply store');
  }

  void call() {
    print('Ios phone is calling...');
  }
}
```

### 执行 
```dart
// 后面覆盖前面
void main(List<String> args) {
  var p = Xiaomi();
  p.call();
  p.playStore();
  p.appleStore();
}

//Ios phone is calling...
//Google play store
//Apply store
```

## mixin 不能构造函数
### 加入构造函数
```dart
class Android {
  Android();
  ...
}

//The class 'Android' can't be used as a mixin because it declares a constructor.
```
### 加入 mixin 关键字 限定
```dart
mixin Android {
  // mixin 中不能定义 constructor
  ...
}

```

## mixin on 限定条件
```dart
// 关键字 on 限定 Phone
mixin Android on Phone {
  void playStore() {
    print('Google play store');
  }

  @override
  void call() {
    super.call();
    print('Android phone is calling...');
  }
}
//with 混入时候，必须先 Phone 才行
class Xiaomi with Android {}
//错误
//'Android' can't be mixed onto 'Object' because 'Object' doesn't implement 'Phone'.
//Try extending the class 'Android'.

//正确
class Xiaomi with Phone,Android {}

```

