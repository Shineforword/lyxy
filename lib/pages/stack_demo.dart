// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Text(
              "💰",
              style: TextStyle(color: Colors.blue, fontSize: 200),
            ),
            Text(
              "🚗",
              style: TextStyle(color: Colors.red, fontSize: 40),
            ),
            Positioned(
              right: 120,
              bottom: 10,
              child: Text(
                "💰",
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
            ),
            Positioned(
              right: 40,
              bottom: 20,
              child: Text(
                "💰",
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
            ),
            Positioned(
              right: 60,
              bottom: 60,
              child: Text(
                "💰",
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
            ),
            Positioned(
              right: 200,
              bottom: 100,
              child: Text(
                "💰",
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
            ),
            Positioned(
              right: 180,
              bottom: 90,
              child: Text(
                "💰",
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
            ),
            Positioned(
              right: 140,
              bottom: 50,
              child: Text(
                "💰",
                style: TextStyle(color: Colors.red, fontSize: 40),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://upload-images.jianshu.io/upload_images/28020825-6aeca514f7bbf623.jpg"))));
  }
}
