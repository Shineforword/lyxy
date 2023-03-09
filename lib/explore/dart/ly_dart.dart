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
              title: "1.var",
              page: LyxyCodes(mdpwd: "lib/assets/markdown/dart/var.md")),
        ],
      ),
    );
  }
}
