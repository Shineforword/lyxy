``` dart
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

```