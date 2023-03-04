// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_markdown/flutter_markdown.dart' as md;
import 'package:markdown_syntax_highlighter/markdown_syntax_highlighter.dart';

class LyxyCodes extends StatelessWidget {
  final String mdpwd;
  const LyxyCodes({Key? key, required this.mdpwd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("code detail"),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.blue[50]),
          child: FutureBuilder(
            builder: builder,
            future: rootBundle.loadString(mdpwd),
          ),
        ));
  }

  Widget builder(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasData) {
      return Markdown(
        data: snapshot.data,
        syntaxHighlighter: HighLight(),
      );
    } else {
      return Center(
        child: Text("加载中"),
      );
    }
  }
}

/// 引入高亮依赖 - markdown_syntax_highlighter: ^1.1.0
class HighLight extends md.SyntaxHighlighter {
  @override
  TextSpan format(String source) {
    final SyntaxHighlighterStyle style =
        SyntaxHighlighterStyle.lightThemeStyle();
    return TextSpan(
        style: TextStyle(
          fontSize: 12.0,
        ),
        children: [DartSyntaxHighlighter(style).format(source)]);
  }
}
