// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../src/lyxy_explore_Item.dart';
import './button_demo.dart';
import './popup_menu_button_demo.dart';

class MaterialComponents extends StatelessWidget {
  const MaterialComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialComponents"),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          LyxyExploreItem(
              title: "PopupMenuButton", page: PopupMenuButtonDemo()),
          LyxyExploreItem(title: "Button", page: ButtonDemo()),
          LyxyExploreItem(
              title: "FloatingActionButton", page: FloatingActionButtonDemo()),
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
