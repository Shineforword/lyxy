// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import './pro_bottom_tab.dart';

// 初始化
class ProLyxyApp extends StatelessWidget {
  const ProLyxyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 不展示debug条幅
      debugShowCheckedModeBanner: false,
      title: '',
      // 全局样式管理
      theme: ThemeData(
          primarySwatch: Colors.blue,
          highlightColor: const Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
          // 导航配置
          appBarTheme: null),
      // 初始化路由
      initialRoute: "/",
      // 路由表
      routes: {
        ///project
        "/": (context) => const ProBottomTab(),
      },
    );
  }
}
