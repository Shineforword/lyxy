``` dart
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
                  builder: (context) => LyxyCodes(mdpwd: "lib/assets/markdown/constrains/constrains.md")));
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
```