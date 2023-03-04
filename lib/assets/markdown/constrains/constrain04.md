```dart
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
```