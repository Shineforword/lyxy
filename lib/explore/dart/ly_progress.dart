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
              title: "2.async 异步 ",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/progress/async.md")),
          LyxyExploreItem(
              title: "3.generate 生成器",
              page:
                  LyxyCodes(mdpwd: "lib/assets/markdown/progress/generate.md")),
          LyxyExploreItem(
              title: "4.typedef",
              page:
                  LyxyCodes(mdpwd: "lib/assets/markdown/progress/typedef.md")),
          LyxyExploreItem(
              title: "5.nullsafety 空安全",
              page: LyxyCodes(
                  mdpwd: "lib/assets/markdown/progress/nullsafety.md")),
          LyxyExploreItem(
              title: "6.extension 扩展",
              page: LyxyCodes(
                  mdpwd: "lib/assets/markdown/progress/extension.md")),
        ],
      ),
    );
  }
}
