## 泛型使用
```dart
main(List<String> args) {
  var l = <String>[];
  l.add('aaa');
  l.add('bbb');
  l.add('ccc');
  print(l);

  var m = <int, String>{};
  m[1] = 'aaaa';
  m[2] = 'bbbb';
  m[3] = 'cccc';
  print(m);
}

//[aaa, bbb, ccc]
//{1: aaaa, 2: bbbb, 3: cccc}
```

## 泛型函数
```dart
K addCache<K, V>(K key, V val) {
  print('$key -> $val');
  return val;
}

main(List<String> args) {
  var key = addCache('url', 'https://wiki.doucafecat.tech');
  print(key);
}

//url -> https://wiki.doucafecat.tech
//https://wiki.doucafecat.tech
```

## 构造函数泛型
```dart
class Phone<T> {
  final T mobileNumber;
  Phone(this.mobileNumber);
}

main(List<String> args) {
  var p = Phone<String>('ducafecat');
  print(p.mobileNumber);
}

//ducafeca
```
## 泛型限制

```dart
//定义
class AndroidPhone {
  void startup() {
    print('Android Phone 开机');
  }
}
class Phone<T extends AndroidPhone> {
  final T mobile;
  Phone(this.mobile);
}

//实例
main(List<String> args) {
  var ad = AndroidPhone();
  var p = Phone<AndroidPhone>(ad);
  p.mobile.startup();
}

//Android Phone 开机
//通过 extends 关键字 可以限定你可以泛型使用的类型
```