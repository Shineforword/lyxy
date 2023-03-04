// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lyxy_app/explore/src/lyxy_codes.dart';
import '../src/lyxy_explore_Item.dart';

class Constrains extends StatelessWidget {
  const Constrains({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("constrains"),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          LyxyExploreItem(title: "1.子元素充满父类元素", page: Constrain01()),
          LyxyExploreItem(title: "2.loose松约束", page: Constrain02()),
          LyxyExploreItem(title: "3.tight紧约束", page: Constrain03()),
          LyxyExploreItem(title: "4.unbounded无边界", page: Constrain04()),
        ],
      ),
    );
  }
}

class Constrain01 extends StatelessWidget {
  const Constrain01({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: LyzyExploreAppBar(navTitle: "子元素充满父类元素"),
      appBar: AppBar(
        title: Text("子元素充满父类元素"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            tooltip: "code",
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LyxyCodes(
                      mdpwd: "lib/assets/markdown/constrains/constrains.md")));
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blue[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "位置确定后,才按大小显示",
              ),
              SizedBox(
                height: 20,
              ),
              Text("1.上层向下层传递约束条件"),
              Text("2.下层向上层传递大小信息"),
              Text("3.上层决定下层位置信息"),
            ],
          ),
        ),
      ),
    );
  }
}

class Constrain02 extends StatelessWidget {
  const Constrain02({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: LyzyExploreAppBar(navTitle: "子元素充满父类元素"),
        appBar: AppBar(
          title: Text("loose松约束"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              tooltip: "code",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LyxyCodes(
                        mdpwd:
                            "lib/assets/markdown/constrains/constrain02.md")));
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1.Column的宽度=最大子元素的宽度"),
            Text("2.Container紧包括子元素"),
            Text("3.当一个组件告诉其子元素可以比自身更小,通常称对子级使用宽松约束"),
            Text("4.Scaffold对column的约束是宽高内即可"),
          ],
        ));
  }
}

class Constrain03 extends StatelessWidget {
  const Constrain03({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: LyzyExploreAppBar(navTitle: "子元素充满父类元素"),
        appBar: AppBar(
          title: Text("tight紧约束:宽/高一致"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              tooltip: "code",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LyxyCodes(
                        mdpwd:
                            "lib/assets/markdown/constrains/constrain03.md")));
              },
            ),
          ],
        ),
        body: Center(
          child: ConstrainedBox(
            // constraints: BoxConstraints(
            //   maxHeight: 100,
            //   maxWidth: 100,
            // 紧约束
            constraints: BoxConstraints.tight(Size(200, 200)),
            child: Container(
              width: 1000,
              height: 500,
              color: Colors.amber,
            ),
          ),
        ));
  }
}

class Constrain04 extends StatelessWidget {
  const Constrain04({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: LyzyExploreAppBar(navTitle: "子元素充满父类元素"),
        appBar: AppBar(
          title: Text("row,column,listview属于此类"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              tooltip: "code",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LyxyCodes(
                        mdpwd:
                            "lib/assets/markdown/constrains/constrain04.md")));
              },
            ),
          ],
        ),
        body: Center(
          child: ConstrainedBox(
              constraints: BoxConstraints.tight(Size(200, 200)),
              child: UnconstrainedBox(
                child: Container(
                  width: 200,
                  height: 500,
                  color: Colors.amber,
                ),
              )),
        ));
  }
}
