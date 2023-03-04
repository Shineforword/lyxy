import 'package:flutter/material.dart';

/// 居中效果hello
class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "hello",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.yellow),
      ),
    );
    ;
  }
}
