// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatelessWidget {
  const PopupMenuButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PopupMenuButton"),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PopupMenuButton(
                      onSelected: (value) {
                        debugPrint(value);
                      },
                      itemBuilder: (BuildContext context) => [
                            PopupMenuItem(child: Text("Home")),
                            PopupMenuItem(child: Text("Disc")),
                            PopupMenuItem(child: Text("Hist"))
                          ])
                ],
              )
            ],
          ),
        ));
  }
}
