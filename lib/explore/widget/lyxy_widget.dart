// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lyxy_app/explore/widget/ly_widget_material_app.dart';
import 'package:lyxy_app/explore/widget/lyxy_button.dart';
import 'package:lyxy_app/explore/widget/lyxy_container.dart';
import 'package:lyxy_app/explore/widget/lyxy_image.dart';
import '../src/lyxy_explore_Item.dart';
import '../widget/lyxy_widget_life.dart';
import 'package:lyxy_app/explore/src/lyxy_codes.dart';

import 'lyxy_scaffold.dart';
import 'lyxy_tabController.dart';
import 'lyxy_text.dart';
import 'lyxy_widget_app_life.dart';
import './lyxy_view.dart';

const String img1 =
    "https://upload-images.jianshu.io/upload_images/28020825-8f914692886fa6d0.jpg";
const String img2 =
    "https://upload-images.jianshu.io/upload_images/28020825-a627feb784ab8bd9.jpg";

class LyxyWidget extends StatelessWidget {
  const LyxyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget"),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          LyxyExploreItem(title: "1.Stateless", page: LyxyWidgetLess()),
          LyxyExploreItem(title: "2.Statefull", page: LyxyWidgetFull()),
          LyxyExploreItem(title: "3.函数组件(不会在组件树上展示)", page: LyxyWidgetFunc()),
          LyxyExploreItem(title: "4.widget 组件生命周期", page: LyxyWidgetLife()),
          LyxyExploreItem(
              title: "5.widget app级别生命周期", page: LyxyWidgetAppLife()),
          LyxyExploreItem(
              title: "6.Material App ", page: LyWidgetMaterialApp()),
          LyxyExploreItem(title: "7.Scaffold 脚手架 ", page: LyxyScaffold()),
          LyxyExploreItem(title: "8.Container", page: LyxyContainer()),
          LyxyExploreItem(title: "9.Text ", page: LyxyText()),
          LyxyExploreItem(title: "10.Image ", page: LyxyImage()),
          LyxyExploreItem(title: "11.Button ", page: LyxyButton()),
          LyxyExploreItem(
              title: "12.DefaultTabController", page: LyxyTabController()),
          LyxyExploreItem(title: "13.View 网格视图 ", page: ViewDemo()),
        ],
      ),
    );
  }
}

class LyxyWidgetLess extends StatelessWidget {
  const LyxyWidgetLess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stateless"),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            tooltip: "code",
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LyxyCodes(
                      mdpwd: "lib/assets/markdown/widget/stateless.md")));
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [LyxyWidgetLessDemo()],
      ),
    );
  }
}

class LyxyWidgetFull extends StatelessWidget {
  const LyxyWidgetFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("statefull"),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            tooltip: "code",
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LyxyCodes(
                      mdpwd: "lib/assets/markdown/widget/statefull.md")));
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [LyxyWidgetFullDemo()],
      ),
    );
  }
}

class LyxyWidgetFunc extends StatelessWidget {
  const LyxyWidgetFunc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("func"),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            tooltip: "code",
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      LyxyCodes(mdpwd: "lib/assets/markdown/widget/func.md")));
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [imageWidget(url: img1)],
      ),
    );
  }

  /// -相对组件性能低 不会在组件树上展示
  Widget imageWidget({required String url}) {
    return Image.network(url);
  }
}

class LyxyWidgetLessDemo extends StatelessWidget {
  const LyxyWidgetLessDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text("LyxyWidgetLess");
  }
}

class LyxyWidgetFullDemo extends StatefulWidget {
  const LyxyWidgetFullDemo({Key? key}) : super(key: key);

  @override
  _LyxyWidgetFullDemoState createState() => _LyxyWidgetFullDemoState();
}

class _LyxyWidgetFullDemoState extends State<LyxyWidgetFullDemo> {
  String imageUrl = img1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              imageUrl = imageUrl == img1 ? img2 : img1;
            });
          },
          child: Text("切换"),
        ),
        AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            )),
        SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: imageWidget(url: imageUrl),
        )
      ],
    );
  }

  /// -相对组件性能低 不会在调试工具的组件树上展示
  Widget imageWidget({required String url}) {
    return Image.network(url);
  }
}
