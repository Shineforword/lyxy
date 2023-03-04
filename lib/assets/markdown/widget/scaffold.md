```dart
class LyxyScaffoldDemo extends StatelessWidget {
  const LyxyScaffoldDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 菜单
      appBar: AppBar(),
      // 主题
      body: Container(),
      // 悬浮按钮
      floatingActionButton: FloatingActionButton(onPressed: null),
      //悬浮按钮动画
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      // 固定在下方显示的按钮
      persistentFooterButtons: [],
      // 左侧 抽屉
      drawer: Drawer(),
      // 右侧
      endDrawer: Drawer(),
      // 底部菜单
      bottomNavigationBar: Container(),
      // 底部拉出菜单
      bottomSheet: Container(),
      //背景色
      backgroundColor: Colors.red,
      // 自适应底部padding
      resizeToAvoidBottomInset: false,
      // 是否显示到底部
      primary: false,
      //
      drawerDragStartBehavior: DragStartBehavior.start,
    );
  }
}
// 脚手架管理 .... 方法
Scaffold.of(context)......
```