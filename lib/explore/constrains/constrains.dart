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
          LyxyExploreItem(title: "5.flex", page: Constrain05()),
          LyxyExploreItem(title: "6.stack 层叠", page: Constrain06()),
          LyxyExploreItem(title: "7.wrap 流式布局", page: Constrain07()),
          LyxyExploreItem(title: "8.Align ", page: Constrain08()),
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

class Constrain05 extends StatelessWidget {
  const Constrain05({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: LyzyExploreAppBar(navTitle: "子元素充满父类元素"),
        appBar: AppBar(
          title: Text("flex"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              tooltip: "code",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LyxyCodes(
                        mdpwd:
                            "lib/assets/markdown/constrains/constrain05.md")));
              },
            ),
          ],
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// 用于 colum row  spacer
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    color: Colors.lightBlue,
                    child: Center(
                      child: Text(
                        "1份",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  )),
              Spacer(
                flex: 2,
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    color: Colors.lightGreen,
                    child: Center(
                      child: Text(
                        "2份",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}

class Constrain06 extends StatelessWidget {
  const Constrain06({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("stack"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              tooltip: "code",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LyxyCodes(
                        mdpwd:
                            "lib/assets/markdown/constrains/constrain06.md")));
              },
            ),
          ],
        ),
        body: Stack(
          alignment: Alignment.center,
          // 裁切
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.amber,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blueGrey,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            // 绝对定位
            Positioned(
                left: 250,
                bottom: 0,
                child: FlutterLogo(
                  size: 100,
                ))
          ],
        ));
  }
}

class Constrain07 extends StatelessWidget {
  const Constrain07({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("wrap"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              tooltip: "code",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LyxyCodes(
                        mdpwd:
                            "lib/assets/markdown/constrains/constrain07.md")));
              },
            ),
          ],
        ),
        body: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          verticalDirection: VerticalDirection.down,
          // 裁切
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueGrey,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
          ],
        ));
  }
}

class Constrain08 extends StatelessWidget {
  const Constrain08({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("wrap"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              tooltip: "code",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LyxyCodes(
                        mdpwd:
                            "lib/assets/markdown/constrains/constrain08.md")));
              },
            ),
          ],
        ),
        body: Align(
          // Align 高宽因子 调试器查看 (子元素的宽高倍数) - 不设置即Align充满body
          widthFactor: 2,
          heightFactor: 2,
          alignment: Alignment.centerLeft,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          // 裁切
        ));
  }
}
