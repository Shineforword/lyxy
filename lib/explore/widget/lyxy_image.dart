// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lyxy_app/explore/src/lyxy_codes.dart';

class LyxyImage extends StatelessWidget {
  const LyxyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LyxyCodes(mdpwd: "lib/assets/markdown/widget/image.md");
  }
}
