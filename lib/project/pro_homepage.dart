// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../demo/listview_demo.dart';

class ProHomepage extends StatelessWidget {
  const ProHomepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Home",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        backgroundColor: Colors.blue,
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "search",
            onPressed: null,
          ),
        ],
      ),
      body: ListViewDemo(),
    );
  }
}
