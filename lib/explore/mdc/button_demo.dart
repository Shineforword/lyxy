// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

/// - Button

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    style: ButtonStyle(), onPressed: null, child: Text("haha")),
                FloatingActionButton(
                  elevation: 0.0,
                  onPressed: null,
                  child: Icon(Icons.add),
                ),
                BackButton()
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  height: 50,
                  child: OutlinedButton(
                      onPressed: null,
                      child: Text(
                        "点我",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                      onPressed: null,
                      child: Text(
                        "Expanded",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: OutlinedButton(
                      onPressed: null,
                      child: Text(
                        "Expanded",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )),
                ),
              ],
            ),
            ButtonBar(
              children: [
                OutlinedButton(
                    onPressed: null,
                    child: Text(
                      "ButtonBar",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )),
                OutlinedButton(
                    onPressed: null,
                    child: Text(
                      "ButtonBar",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

/// -  FloatingActionButtonDemo
class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// - normal
    final Widget floatingActionButton = FloatingActionButton(
      onPressed: () {},
      elevation: 0.0,
      // shape: BeveledRectangleBorder(),
      child: Icon(Icons.add),
      // backgroundColor: ,
    );

    /// -extended
    final Widget floatingActionButtonExtended = FloatingActionButton.extended(
        elevation: 0.0, onPressed: () {}, label: Text("点我"));
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton"),
        elevation: 5,
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        elevation: 0.0,
        child: Container(
          height: 64,
        ),
      ),
    );
  }
}
