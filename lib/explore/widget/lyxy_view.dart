// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../../model/post.dart';
import '../src/lyxy_codes.dart';

class ViewDemo extends StatelessWidget {
  const ViewDemo({Key? key}) : super(key: key);

  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 8.0,
            left: 8.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  posts[index].author,
                  style: TextStyle(fontWeight: FontWeight.normal),
                )
              ],
            ))
      ],
    );
  }

  /// 网格视图
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          "Item $index",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    /// pageview
    // return PageView.builder(
    //   itemCount: posts.length,
    //   itemBuilder: _pageItemBuilder,
    // );

    /// 网格视图
    // return GridView.count(
    //   // 交叉轴元素个数
    //   crossAxisCount: 3,
    //   crossAxisSpacing: 16,
    //   mainAxisSpacing: 16,
    //   // 生成元素
    //   children: _buildTiles(100),
    //   //滚动方向
    //   // scrollDirection: Axis.horizontal,
    // );

    /// 网格视图
    return Scaffold(
      appBar: AppBar(
        title: Text("网格视图"),
        actions: [
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      LyxyCodes(mdpwd: "lib/assets/markdown/widget/view.md")));
            },
          )
        ],
      ),
      body: GridViewDemo(),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: posts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
        itemBuilder: _itemBuilder);
  }
}

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      //拖动回弹,默认true
      pageSnapping: true,
      //方向
      reverse: false,
      //滚动方向
      scrollDirection: Axis.vertical,
      //回调
      onPageChanged: (value) => {debugPrint('Page:$value')},
      //
      controller: PageController(
          // 默认0
          initialPage: 1,
          // 不记忆
          keepPage: false,
          // 可视比例
          viewportFraction: 0.5),
      children: [
        Container(
          color: Colors.blue,
          alignment: Alignment(0, 0),
          child: Text(
            "ONE",
            style: TextStyle(fontSize: 32.0, color: Colors.black),
          ),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment(0, 0),
          child: Text(
            "TWO",
            style: TextStyle(fontSize: 32.0, color: Colors.black),
          ),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment(0, 0),
          child: Text(
            "THREE",
            style: TextStyle(fontSize: 32.0, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
