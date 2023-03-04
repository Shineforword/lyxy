```` dart
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class LyWidgetMaterialApp extends StatelessWidget {
  const LyWidgetMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// App标题  iOS 没有用 android 进程名称 web标题tab栏名称
      title: "我是标题",

      /// app颜色
      color: Colors.amber[100],

      /// 样式
      theme: ThemeData(primaryColor: Colors.blue),

      /// 样式
      darkTheme: ThemeData(primaryColor: Colors.black38),

      /// 条幅
      debugShowCheckedModeBanner: true,

      ///调试显示材质网格
      // debugShowMaterialGrid: true,

      /// 显示语义调试
      // showSemanticsDebugger: true,

      /// 显示性能叠加
      // showPerformanceOverlay: true,

      /// 检查图片缓存情况
      // checkerboardRasterCacheImages: true,

      /// 检查不必要的setLayer
      // checkerboardOffscreenLayers: true,

      ///
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material App"),
          actions: [IconButton(onPressed: null, icon: Icon(Icons.code))],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  debugPrint("haha");
                  Navigator.pop(context);
                },
                child: FlutterLogo(
                  size: 100,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("logo"),
            ],
          ),
        ),
      ),
    );
  }
}

````