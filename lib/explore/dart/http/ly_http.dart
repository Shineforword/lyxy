// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../../../utils/index.dart';
import '../../src/lyxy_codes.dart';

class LyHttp extends StatefulWidget {
  const LyHttp({Key? key}) : super(key: key);
  @override
  _LyHttpState createState() => _LyHttpState();
}

class _LyHttpState extends State<LyHttp> {
  var _response = "返回数据";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http"),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LyxyCodes(
                        mdpwd: "lib/assets/markdown/widget/button.md")));
              },
              icon: Icon(Icons.code))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.white54),
              child: Text(_response),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      var res = await WxHttpUtil().get("/lists");
                      setState(() {
                        _response = res.toString();
                      });
                    },
                    child: Text("dio")),
                ElevatedButton(
                    onPressed: () async {
                      var res = await LyxyHttp().fetchGet();
                      setState(() {
                        _response = res.body.toString();
                      });
                    },
                    child: Text("http")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
