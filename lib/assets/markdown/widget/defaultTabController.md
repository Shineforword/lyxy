```dart
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../../demo/sliver_demo.dart';
import '../../pages/basic_demo.dart';
import '../../pages/layout_demo.dart';

class LyxyTabController extends StatelessWidget {
  const LyxyTabController({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: const Text(
              "DefaultTabController",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            elevation: 0.0,
            backgroundColor: Colors.blue,
            actions: const <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: null,
              ),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.airplanemode_active)),
                Tab(icon: Icon(Icons.pool)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [BasicDemo(), LayoutDemo(), SliverDemo()],
          ),
        ));
  }
}

```