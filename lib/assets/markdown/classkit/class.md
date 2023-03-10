## 定义、使用类
```dart
//定义

class Point {
}
//使用

var p = Point();
```

## 构造函数
```dart
//定义

class Point {
  num x, y;

  Point(this.x, this.y);

  @override
  String toString() {
    return "$x, $y";
  }
}
//使用

var p = Point(1, 2);
print(p);

1, 2
```

## 初始化列表
```dart
//定义

class Point {
  num x, y;
  Map origin1, origin2;

  Point(this.x, this.y)
      : origin1 = {'x': x, 'y': y},
        origin2 = {'x': x + 10, 'y': y + 10};
}
//使用

void main(List<String> args) {
  var p = Point(1, 2);
  print(p);

1, 2, {1: 1, 2: 2}, {1: 2, 2: 4}
```

## 命名构造函数

```dart
//定义

class Point {
  num x, y;
  Map origin1, origin2;

  Point.fromJson(Map json)
      : x = json['x'],
        y = json['y'],
        origin1 = {'x': json['x'], 'y': json['y']},
        origin2 = {'x': json['x'] + 10, 'y': json['y'] + 10};
}
//使用

var p = Point.fromJson({"x": 1, "y": 2});
print(p);

10, 20, {x: 10, y: 20}, {x: 20, y: 30}
```

## 重定向构造函数
```dart
//定义

class Point {
  num x, y;
  Map origin1, origin2;

  Point(this.x, this.y)
      : origin1 = {'x': x, 'y': y},
        origin2 = {'x': x + 10, 'y': y + 10};

  // 重定向构造函数
  Point.fromJson(Map json) : this(json['x'], json['y']);
}
//使用

var p = Point.fromJson({"x": 1, "y": 2});
print(p);

10, 20, {x: 10, y: 20}, {x: 20, y: 30}
```

## callable
```dart
class IOSPhone {
  call(String num) {
    print('phone number is $num');
  }
}

main(List<String> args) {
  var phone = IOSPhone();
  phone('911');
}

//phone number is 911
```