## 扩展 extension
#### 但这是一种简洁优雅的方式，你可以想想之前继承的繁琐。
#### extension 本质上还是和继承一样扩展了方法。
## 示例 扩展日期时间
```dart
//加入依赖包 pubspec.yaml
//dependencies:
 // intl: ^0.17.0

//编写扩展类 ExDateTime
import 'package:intl/intl.dart';

extension ExDateTime on DateTime {
  /// 方法，格式化日期 yyyy-MM-dd
  String toDateString({String format = 'yyyy-MM-dd'}) =>
      DateFormat(format).format(this);

  // 属性
  int get nowTicket => this.microsecondsSinceEpoch;
}

main() {
  var now = DateTime.now();

  print(now.toDateString());
  print(now.nowTicket);
}
//我们给可以扩展类加个前缀 Ex 这样一看就知道是扩展
```