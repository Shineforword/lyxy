// ignore_for_file: prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';
import '../model/post.dart';
import 'post_detail.dart';
import 'package:easy_refresh/easy_refresh.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  // 自定义小物件(嵌套)
  Widget _itemListBuilder(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
          Positioned.fill(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Color.fromRGBO(255, 255, 255, 0.3),
              highlightColor: Color.fromRGBO(255, 255, 255, 0.1),
              onTap: () {
                debugPrint("tap");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PostDetail(post: posts[index])));
              },
            ),
          )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      onRefresh: () {
        posts.insert(0, posts[Random().nextInt(13)]);
        posts.insert(0, posts[Random().nextInt(13)]);
        setState(() {
          ListView.builder(
              itemCount: posts.length, itemBuilder: _itemListBuilder);
        });
      },
      onLoad: () {
        posts.add(posts[Random().nextInt(13)]);
        setState(() {
          ListView.builder(
              itemCount: posts.length, itemBuilder: _itemListBuilder);
        });
      },
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _itemListBuilder,
      ),
    );
    // return ListView.builder(
    //   itemCount: posts.length,
    //   itemBuilder: _itemListBuilder,
    // );
  }
}
