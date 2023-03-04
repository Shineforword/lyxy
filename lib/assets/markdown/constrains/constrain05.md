```` dart
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
              /// 用于 colum row  
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
````