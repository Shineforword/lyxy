// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LyzyExploreAppBar extends AppBar {
  final String? navTitle;
  Icon rightIcon;
  void Function() rightAction;
  LyzyExploreAppBar(this.rightIcon, this.rightAction, this.navTitle,
      {super.key});
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("$navTitle"),
      actions: [
        IconButton(
          icon: rightIcon,
          tooltip: "code",
          onPressed: rightAction,
        ),
      ],
    );
  }
}
