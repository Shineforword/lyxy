// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import '../../utils/config.dart';

class ProWechatPost extends StatefulWidget {
  const ProWechatPost({Key? key}) : super(key: key);

  @override
  _ProWechatPostState createState() => _ProWechatPostState();
}

class _ProWechatPostState extends State<ProWechatPost> {
  List<AssetEntity> _selectedAssets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发布"),
      ),
      body: _buildMainView(),
    );
  }

  // 图片列表
  Widget _bulidPhotoList() {
    return Padding(
        padding: EdgeInsets.all(10),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints containts) {
          final double width = (containts.maxWidth - 10 * 2) / 3;
          return Wrap(
            spacing: spaceing,
            runSpacing: spaceing,
            children: [
              for (final asset in _selectedAssets)
                Container(
                  // 与BoxDecoration配合使用
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(3)),
                  child: AssetEntityImage(
                    asset,
                    isOriginal: false,
                    width: width,
                    height: width,
                    fit: BoxFit.cover,
                  ),
                ),
              if (_selectedAssets.length < 9)
                GestureDetector(
                  onTap: () async {
                    final List<AssetEntity>? result =
                        await AssetPicker.pickAssets(context,
                            pickerConfig: AssetPickerConfig(
                                maxAssets: 9, selectedAssets: _selectedAssets));
                    setState(() {
                      _selectedAssets = result ?? [];
                    });
                  },
                  child: Container(
                    color: Colors.black12,
                    width: width,
                    height: width,
                    child: Icon(
                      Icons.add,
                      size: 48,
                      color: Colors.black38,
                    ),
                  ),
                )
            ],
          );
        }));
  }

  // 主图
  Widget _buildMainView() {
    return Column(
      children: [_bulidPhotoList()],
    );
  }
}
