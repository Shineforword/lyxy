// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import './pro_homepage.dart';
import './pro_category.dart';
import './pro_explore.dart';
import './pro_my.dart';

class ProBottomTab extends StatefulWidget {
  const ProBottomTab({Key? key}) : super(key: key);
  @override
  _ProBottomTabState createState() => _ProBottomTabState();
}

class _ProBottomTabState extends State<ProBottomTab> {
  /// 当前选中下标
  int currentIndex = 0;

  /// Pages 展示
  List listTabs = [ProHomepage(), ProCategory(), ProExplore(), ProMy()];
  List listNavs = ["", "Category", "Explore", "My"];

  /// appBar 控制
  bool isAppBarHidden = true;

  /// tab 点击事件
  void _onTapHandler(int index) {
    setState(() {
      currentIndex = index;
      isAppBarHidden = (index == 0 || index == 3) ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isAppBarHidden == false
          ? AppBar(
              title: Text("${listNavs[currentIndex]}"),
              elevation: 0.0,
            )
          : null,
      body: listTabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航多于3个配置
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        currentIndex: currentIndex,
        onTap: _onTapHandler,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "My"),
        ],
      ),
    );
  }
}
