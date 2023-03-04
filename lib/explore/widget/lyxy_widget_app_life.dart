// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lyxy_app/explore/src/lyxy_codes.dart';

class LyxyWidgetAppLife extends StatefulWidget {
  const LyxyWidgetAppLife({Key? key}) : super(key: key);

  @override
  // 创建state只执行一次
  _LyxyWidgetAppLifeState createState() => _LyxyWidgetAppLifeState();
}

class _LyxyWidgetAppLifeState extends State<LyxyWidgetAppLife>
    with WidgetsBindingObserver {
  @override
  // 初始化state mounted等于true 只执行一次
  void initState() {
    // TODO: implement initState
    super.initState();
    // 添加观察者
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  // UI被重新渲染时多次执行
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: LyxyCodes(mdpwd: "lib/assets/markdown/widget/applife.md"),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    print("didChangeAppLifecycleState:$state");

    //resumed 应用程序可见且响应用户输入

    // inactive  非激活状态  无法响应输入

    // pause 无法响应输入 运行在后台

    // detached 仍寄存在Flutter引擎上 但与平台View分离

    // suspending 应用被挂起 此状态永远不会回调
  }

  // 当前系统改变了一些访问性活动的回调
  @override
  void didChangeAccessibilityFeatures() {
    // TODO: implement didChangeAccessibilityFeatures
    super.didChangeAccessibilityFeatures();
  }

  // 低内存回调
  @override
  void didHaveMemoryPressure() {
    // TODO: implement didHaveMemoryPressure
    super.didHaveMemoryPressure();
  }

  //用户本地设置发生变化 例如语言
  @override
  void didChangeLocales(List<Locale>? locales) {
    // TODO: implement didChangeLocales
    super.didChangeLocales(locales);
  }

// 应用尺寸发生变化 例如旋转
  @override
  void didChangeMetrics() {
    // TODO: implement didChangeMetrics
    super.didChangeMetrics();
  }

// 系统主题切换
  @override
  void didChangePlatformBrightness() {
    // TODO: implement didChangePlatformBrightness
    super.didChangePlatformBrightness();
  }

  //文字系数变化
  @override
  void didChangeTextScaleFactor() {
    // TODO: implement didChangeTextScaleFactor
    super.didChangeTextScaleFactor();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
