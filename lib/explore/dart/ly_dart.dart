// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../src/lyxy_codes.dart';
import '../src/lyxy_explore_Item.dart';

class LyDart extends StatelessWidget {
  const LyDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          LyxyExploreItem(
              title: "1.var 变量",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/var.md")),
          LyxyExploreItem(
              title: "2.const常量  /  final ",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/const.md")),
          LyxyExploreItem(
              title: "3.运算符",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/num.md")),
          LyxyExploreItem(
              title: "4.bool",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/bool.md")),
          LyxyExploreItem(
              title: "5.String",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/string.md")),
          LyxyExploreItem(
              title: "6.Datetime",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/datetime.md")),
          LyxyExploreItem(
              title: "7.Set",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/set.md")),
          LyxyExploreItem(
              title: "8.enum",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/enum.md")),
          LyxyExploreItem(
              title: "9.map",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/map.md")),
          LyxyExploreItem(
              title: "0.List",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/list.md")),
          LyxyExploreItem(
              title: "A0.注释comments",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/comments.md")),
          LyxyExploreItem(
              title: "A1.函数function",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/function.md")),
          LyxyExploreItem(
              title: "A2.操作符expr",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/expr.md")),
          LyxyExploreItem(
              title: "A3.流程控制",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/flow.md")),
        ],
      ),
    );
  }
}
