// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class ProWechatPost extends StatefulWidget {
  const ProWechatPost({Key? key}) : super(key: key);

  @override
  _ProWechatPostState createState() => _ProWechatPostState();
}

class _ProWechatPostState extends State<ProWechatPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发布"),
      ),
      body: _buildMainView(),
    );
  }

  Widget _buildMainView() {
    return Column(
      children: [
        //选取图片
        ElevatedButton(
            onPressed: () async {
              final List<AssetEntity>? result =
                  await AssetPicker.pickAssets(context);
              print(result);
            },
            child: Text("选取"))
      ],
    );
  }
}
