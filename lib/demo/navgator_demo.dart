// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class NavgatorDemo extends StatelessWidget {
  const NavgatorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(child: Text("Home"), onPressed: null),
            SizedBox(
              width: 50,
            ),
            FloatingActionButton(
                child: Text("About"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          PageDetail(title: "About")));
                })
          ],
        ),
      ),
    );
  }
}

class PageDetail extends StatelessWidget {
  final String title;
  const PageDetail({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
    );
  }
}
