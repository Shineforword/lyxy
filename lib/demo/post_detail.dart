// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../model/post.dart';

/// 错误处理
/// A RenderFlex overflowed by 36 pixels on the bottom.
/// SingleChildScrollView ()

class PostDetail extends StatelessWidget {
  final Post post;

  const PostDetail({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${post.title}"),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.network(
                post.imageUrl,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.all(32.0),
                // 容器占满
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${post.title}",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "${post.author}",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "${post.description}",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(height: 200),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
