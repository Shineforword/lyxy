## 日期时间

```dart
声明
当前时间
var now = new DateTime.now();
print(now);

2022-05-28 20:04:43.607
指定年月日
var d = new DateTime(2018, 10, 10, 9, 30);
print(d);

2018-10-10 09:30:00.000

```

## 创建时间 UTC
````dart
UTC 协调世界时
原子时
原子钟
时区表
创建 utc 时间

var d = new DateTime.utc(2018, 10, 10, 9, 30);
print(d);

2018-10-10 09:30:00.000Z
````

## 解析时间 IOS 8601

```dart
ISO 8601
时区
时区列表
如果时间在零时区

var d1 = DateTime.parse('2018-10-10 09:30:30Z');
print(d1);

2018-10-10 09:30:30.000Z
var d2 = DateTime.parse('2018-10-10 09:30:30+0800');
print(d2);

2018-10-10 01:30:30.000Z
```

## 时间增减量
```dart
var d1 = DateTime.now();
print(d1);
print(d1.add(new Duration(minutes: 5)));
print(d1.add(new Duration(minutes: -5)));

2022-05-28 22:09:12.805
2022-05-28 22:14:12.805
2022-05-28 22:04:12.805
```

## 比较时间
```dart
var d1 = new DateTime(2018, 10, 1);
var d2 = new DateTime(2018, 10, 10);
print(d1.isAfter(d2));
print(d1.isBefore(d2));

false
true
var d1 = DateTime.now();
var d2 = d1.add(new Duration(milliseconds: 30));
print(d1.isAtSameMomentAs(d2));

false
```

## 时间差
```dart
var d1 = new DateTime(2018, 10, 1);
var d2 = new DateTime(2018, 10, 10);
var difference = d1.difference(d2);
print([difference.inDays, difference.inHours]);

[-9, -216]
```

## 时间戳

```dart
var now = new DateTime.now();
print(now.millisecondsSinceEpoch);
print(now.microsecondsSinceEpoch);

1653747090687
1653747090687000
```