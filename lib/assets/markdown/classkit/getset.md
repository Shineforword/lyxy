## get set
```dart
//定义 定义、使用 get set
class People {
  String? _name;

  People();

  set name(String value) {
    _name = value;
  }

  String get name {
    return 'people is $_name';
  }
}

var p = People();
p.name = 'ducafecat';
print(p.name);

people is ducafecat

```

## 简化 get set
```dart
//箭头函数
class People {
  String? _name;

  People();

  set name(String value) => _name = value;

  String get name => 'people is $_name';
}
```

## 业务场景
```dart
  /// 购物车
  /// 商品数量
  int get lineItemsCount => lineItems.length;

  /// 运费
  double get shipping => 0;

  /// 折扣
  double get discount =>
      lineCoupons.fold<double>(0, (double previousValue, CouponsModel element) {
        return previousValue + (double.parse(element.amount ?? "0"));
      });

  /// 商品合计价格
  double get totalItemsPrice =>
      lineItems.fold<double>(0, (double previousValue, LineItem element) {
        return previousValue + double.parse(element.total ?? "0");
      });
  /// 以前可能会写个方法 getXXX() 当然也适用于赋值操作
```