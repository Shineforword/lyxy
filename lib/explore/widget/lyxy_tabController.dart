// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../../demo/sliver_demo.dart';
import '../../pages/basic_demo.dart';
import '../src/lyxy_codes.dart';

class LyxyTabController extends StatelessWidget {
  const LyxyTabController({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
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
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LyxyCodes(
                          mdpwd:
                              "lib/assets/markdown/widget/defaultTabController.md")));
                },
              ),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.airplanemode_active)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [BasicDemo(), SliverDemo()],
          ),
        ));
  }
}
