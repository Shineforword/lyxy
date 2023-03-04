// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../demo/sliver_demo.dart';
import '../demo/drawer_demo.dart';
import '../demo/listview_demo.dart';
import '../pages/basic_demo.dart';
import '../pages/layout_demo.dart';

class ProHomepage extends StatelessWidget {
  const ProHomepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: const Text(
              "Home",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            elevation: 0.0,
            backgroundColor: Colors.blue,
            actions: const <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: "search",
                onPressed: null,
              ),
            ],
            bottom: const TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.airplanemode_active)),
                Tab(icon: Icon(Icons.pool)),
                Tab(icon: Icon(Icons.directions_boat)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            ),
          ),
          // body: const ListViewDemo(),
          body: const TabBarView(
            children: [
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              //  StackDemo(),
              // ViewDemo(),
              SliverDemo()
            ],
          ),
          drawer: const DrawerDemo(),
        ));
  }
}
