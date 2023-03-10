## 异步 async
### 异步回调 then
```dart
import 'package:dio/dio.dart';

void main() {
  Dio dio = Dio();
  dio.get("https://wpapi.ducafecat.tech/products/categories").then((response) {
    print(response.data);
  });
}

//[{id: 34, name: Bag, slug: bag, parent: 0, description: ...
```
### 异步等待 await
```dart
import 'package:dio/dio.dart';

void main() async {
  Dio dio = Dio();
  Response<String> response =
      await dio.get("https://wpapi.ducafecat.tech/products/categories");
  print(response.data);
}
    //async 写在函数定义 await 写在异步请求头
//[{id: 34, name: Bag, slug: bag, parent: 0, description: ...
```

## 异步返回值
```dart
import 'package:dio/dio.dart';

Future<String?> getUrl(String url) async {
  Dio dio = Dio();
  Response<String> response = await dio.get(url);
  return response.data;
}

void main() async {
  var content =
      await getUrl('https://wpapi.ducafecat.tech/products/categories');
  print(content);
}
//定义 Future<T> 返回对象
//[{id: 34, name: Bag, slug: bag, parent: 0, description: ...

```