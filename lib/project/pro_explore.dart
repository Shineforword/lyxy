// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import '../explore/class/classkit.dart';
import '../explore/dart/ly_dart.dart';
import '../explore/mdc/material_components.dart';
import '../explore/constrains/constrains.dart';
import '../explore/widget/lyxy_widget.dart';

class ProExplore extends StatelessWidget {
  const ProExplore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListItem(title: "dart", page: LyDart()),
          ListItem(title: "库类接口继承", page: ClassKit()),
          ListItem(title: "constrains", page: Constrains()),
          ListItem(title: "widget", page: LyxyWidget()),
          ListItem(title: "mdc", page: MaterialComponents()),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  const ListItem({Key? key, required this.title, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
