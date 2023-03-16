// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../src/lyxy_codes.dart';

/// 富文本
class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LyxyCodes(
                        mdpwd: "lib/assets/markdown/widget/richtext.md")));
              },
              icon: Icon(Icons.code))
        ],
      ),
      body: RichText(
        text: const TextSpan(
            text: "Qian",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 150,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100),
            children: [
              TextSpan(
                  text: ".com",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                  ))
            ]),
        textAlign: TextAlign.left,
      ),
    );
  }
}
