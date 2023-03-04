``` dart
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lyxy_app/explore/src/lyxy_codes.dart';

class LyxyContainer extends StatelessWidget {
  const LyxyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return LyxyCodes(mdpwd: "lib/assets/markdown/widget/scaffold.md");
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LyxyCodes(
                        mdpwd: "lib/assets/markdown/widget/container.md")));
              },
              icon: Icon(Icons.code))
        ],
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          // 容器装饰
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.yellow, offset: Offset(2, 2), blurRadius: 4),
              BoxShadow(color: Colors.red, offset: Offset(5, 5), blurRadius: 5)
            ],
            //
            image: DecorationImage(
                image: NetworkImage(
                    "https://upload-images.jianshu.io/upload_images/28020825-e3f5e42a63b53f36.jpg"),
                fit: BoxFit.cover),
          ),
          // 前景装饰
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: Colors.pink.withOpacity(0.5)
          ),
          // 转换
          transform: Matrix4.rotationZ(0.2),
          // 约束
          constraints: BoxConstraints(
              //
              maxHeight: 300),
          child: Center(
            child: FlutterLogo(
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}

```