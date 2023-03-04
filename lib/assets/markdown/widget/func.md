``` dart
  /// -相对组件性能低 不会在组件树上展示
  Widget imageWidget({required String url}) {
    return Image.network(url);
  }
```