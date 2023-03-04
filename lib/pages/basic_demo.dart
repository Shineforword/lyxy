// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  const BasicDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return RichTextDemo();
    return ConDemo();
  }
}

/// 文本
class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);
  final TextStyle _textStyle = const TextStyle(
    fontSize: 16,
  );
  final String _title = "朝三暮四";
  @override
  Widget build(BuildContext context) {
    return Text(
      "《庄子·齐物论》：“狙公赋芧，曰：‘朝三而暮四。’众狙皆怒。曰：‘然则朝四而暮三。’众狙皆悦。名实未亏而喜怒为用，亦因是也。--$_title,《庄子·齐物论》：“狙公赋芧，曰：‘朝三而暮四。’众狙皆怒。曰：‘然则朝四而暮三。’众狙皆悦。名实未亏而喜怒为用，亦因是也。--$_title",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}

/// 富文本
class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}

/// Container
class ConDemo extends StatelessWidget {
  const ConDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            //滤镜
            // colorFilter:
            // ColorFilter.mode(Colors.indigoAccent, BlendMode.hardLight),
            fit: BoxFit.cover,
            alignment: Alignment.center,
            image: NetworkImage(
                "https://upload-images.jianshu.io/upload_images/28020825-3b903fc1a5a53dfa.jpg")),
      ),
      // color: Colors.grey[50],
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.blue,
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
              borderRadius: BorderRadius.all(Radius.circular(50)),
              // border: Border.all(width: 10, color: Colors.lightBlue),
              // border: Border(
              //     top: BorderSide(width: 10, color: Colors.redAccent),
              //     bottom: BorderSide(width: 10, color: Colors.blueGrey))
              boxShadow: [
                BoxShadow(
                    offset: Offset(5, 5),
                    color: Color.fromRGBO(16, 20, 188, 0.5),
                    blurRadius: 10.0,
                    spreadRadius: 2.0),
              ],
              // shape: BoxShape.circle
              //径向渐变
              // gradient: RadialGradient(colors: [
              //   Color.fromRGBO(7, 102, 255, 1.0),
              //   Color.fromRGBO(3, 28, 128, 1.0)
              // ])
              gradient: LinearGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1.0),
                Color.fromRGBO(3, 28, 128, 1.0)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Icon(
            Icons.pool,
            size: 30,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
