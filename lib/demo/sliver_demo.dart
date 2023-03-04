// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

// SliverPadding 为 SliverGrid添加边距
// SliverSafeArea 为 SliverGrid添加安全区域

import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  const SliverDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            title: Text("Qian"),
            // pinned: true,
            floating: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Qian",
                style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 3.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SliverSafeArea(
              sliver: SliverPadding(
                  // padding: EdgeInsets.all(8.0), sliver: SliverGridDemo()
                  padding: EdgeInsets.all(8.0),
                  sliver: SliverListDemo()))
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  const SliverListDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
              padding: EdgeInsets.only(bottom: 32.0),
              child: Material(
                  borderRadius: BorderRadius.circular(12.0),
                  elevation: 12.0,
                  shadowColor: Colors.grey,
                  child: Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Image.network(
                            posts[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 32.0,
                        left: 32.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(posts[index].title,
                                style: TextStyle(
                                    fontSize: 22.0, color: Colors.white)),
                            Text(posts[index].author,
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.white))
                          ],
                        ),
                      ),
                    ],
                  )));
        },
        childCount: posts.length,
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  const SliverGridDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              child: Image.network(
                posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            );
          },
          childCount: posts.length,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.0,
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0));
  }
}
