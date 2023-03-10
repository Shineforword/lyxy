// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../src/lyxy_codes.dart';
import '../src/lyxy_explore_Item.dart';

class LyProgress extends StatelessWidget {
  const LyProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          LyxyExploreItem(
              title: "1.generics 泛型",
              page:
                  LyxyCodes(mdpwd: "lib/assets/markdown/progress/generics.md")),
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
        ],
      ),
    );
  }
}