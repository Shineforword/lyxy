// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lyxy_app/explore/src/lyxy_codes.dart';

class LyxyWidgetLife extends StatefulWidget {
  const LyxyWidgetLife({Key? key}) : super(key: key);

  @override
  // 创建state只执行一次
  _LyxyWidgetLifeState createState() => _LyxyWidgetLifeState();
}

class _LyxyWidgetLifeState extends State<LyxyWidgetLife> {
  @override
  // 初始化state mounted等于true 只执行一次
  void initState() {
    // TODO: implement initState
    super.initState();

    /// 渲染结束调用 只执行一次
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      print(timeStamp);
    });
  }

  @override
  //父或祖先中的widget中的inheritedWidget改变时会被调用
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  // 父类setState后,子类就会触发
  void didUpdateWidget(covariant LyxyWidgetLife oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  // 从组件树中移除state时
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  // 组件被释放时
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  // UI被重新渲染时多次执行
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: LyxyCodes(mdpwd: "lib/assets/markdown/widget/life.md"),
    );
  }
}
