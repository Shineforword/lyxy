// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import '../common/assets.dart';

class ProWelcome extends StatelessWidget {
  const ProWelcome({Key? key}) : super(key: key);

  Padding _buildText() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 38),
        child:
            //标题
            Text(
          "Beautifull&Lovely at any time !",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
              color: Colors.black54,
              height: 23 / 19),
        ));
  }

  Widget _buildView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //标题
          _buildText(),
          SizedBox(
            height: 70,
          ),
          //图片
          Container(
              child: Image.asset(
            AssetsImages.logo,
            height: 500,
            width: double.infinity,
            fit: BoxFit.cover,
          )),
          SizedBox(
            height: 70,
          ),
          // 组

          Padding(
            // 左右边距horizontal
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                TextButton(
                    onPressed: null,
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
                // 撑开
                Expanded(child: SizedBox()),
                ElevatedButton(
                  onPressed: null,
                  child: Text("Get Started",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: _buildView(),
    );
  }
}
