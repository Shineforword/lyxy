// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

// SliverPadding 为 SliverGrid添加边距
// SliverSafeArea 为 SliverGrid添加安全区域

import 'package:flutter/material.dart';

import '../../model/post.dart';
import '../src/lyxy_codes.dart';

class SliverPage extends StatelessWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LyxyCodes(
                            mdpwd: "lib/assets/markdown/widget/sliver.md")));
                  },
                  icon: Icon(Icons.code))
            ],
            backgroundColor: Colors.blue,
            title: Text("Qian"),
            pinned: true,
            // floating: true,
            // expandedHeight: 300,
            // flexibleSpace: FlexibleSpaceBar(
            //   title: Text(
            //     "Qian",
            //     style: TextStyle(
            //         fontSize: 15.0,
            //         letterSpacing: 3.0,
            //         fontWeight: FontWeight.w500),
            //   ),
            // ),
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
