// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../src/lyxy_codes.dart';
import '../src/lyxy_explore_Item.dart';

class ClassKit extends StatelessWidget {
  const ClassKit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          LyxyExploreItem(
              title: "1.class 类",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/classkit/class.md")),
          LyxyExploreItem(
              title: "2.get / set  ",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/classkit/getset.md")),
          LyxyExploreItem(
              title: "3.static ",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/classkit/static.md")),
          LyxyExploreItem(
              title: "4.abstract 抽象 ",
              page:
                  LyxyCodes(mdpwd: "lib/assets/markdown/classkit/abstract.md")),
          LyxyExploreItem(
              title: "5.interface ",
              page: LyxyCodes(
                  mdpwd: "lib/assets/markdown/classkit/interface.md")),
          LyxyExploreItem(
              title: "6.extends 继承",
              page:
                  LyxyCodes(mdpwd: "lib/assets/markdown/classkit/extends.md")),
          LyxyExploreItem(
              title: "7.factory ",
              page:
                  LyxyCodes(mdpwd: "lib/assets/markdown/classkit/factory.md")),
          LyxyExploreItem(
              title: "7.with 多继承 ",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/classkit/with.md")),
        ],
      ),
    );
  }
}
