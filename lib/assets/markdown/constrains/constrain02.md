``` dart
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
                  mdpwd: "lib/assets/markdown/constrains/constrain02.md"))); 
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

```