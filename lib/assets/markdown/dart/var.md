
## var
```dart
var a;
// var a = ""; // 一旦赋值，就确定类型，不能随意改动
a = 'ducafecat';
a = 123;
a = true;
a = {'key': 'val123'};
a = ['abc'];
print(a);

```
## Object 动态任意类型

``` dart
//编译阶段检查类型
Object a = 'doucafecat';
a = 123;
a = [2222];
a.p();
```

## dynamic 动态任意类型
``` dart 
//编译阶段不检查检查类型
dynamic a = 'doucafecat';
a = 123;
a = [1111];
a.p();
```

## 比较 var 与 dynamic、Object
``` dart
//唯一区别 var 如果有初始值，类型被锁定
var a = 'ducafecat';
dynamic a = 'doucafecat';
Object a = 'doucafecat';
a = 123;

```

## 强类型
### 申明类型 声明后，类型被锁定
```dart 
String a;
a = 'ducafecat';
a = 123;
```
## 常见类型
```dart
名称	说明
num	数字
int	整型
double	浮点
bool	布尔
String	字符串
StringBuffer	字符串 buffer
DateTime	时间日期
Duration	时间区间
List	列表
Sets	无重复队列
Maps	kv 容器
enum	枚举

```
## 默认值
```dart
//变量声明后默认都是 null
var a;
String a;
print(a);
assert(a == null);
//assert 检查点函数，如果不符合条件直接抛出错误并终止程序进程
```
### 使用场景 1. var 简化定义变量
```dart
//不用明确变量类型
    var map = <String, dynamic>{};
    map["image"] = image;
    map["title"] = title;
    map["desc"] = desc;
    //这里不用 var ，就要写成 Map<String, dynamic>
```

### 使用场景 2.api 查询通用接口封装的时候，我们一般用动态类型
```dart
//如一个 api 请求
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic> queryParameters,
    ...
  });

```
### 使用场景 3.返回的实例对象
```dart
//如分类实例定义
class Category {
  int id; // 数字 id
  String name; // 字符串 分类名称
  String slug;
  Category({this.id, this.name, this.slug});

  ...
}

```