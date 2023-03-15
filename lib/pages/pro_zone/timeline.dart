// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:lyxy_app/pages/pro_zone/post_appbar.dart';
import 'package:lyxy_app/pages/pro_zone/pro_wechat_post.dart';

import 'entity/index.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  // 用户资料
  UserModel? _user;
  @override
  void initState() {
    super.initState();
    // 初始用户资料
    _user = const UserModel(
      nickname: "前",
      avator:
          "https://upload-images.jianshu.io/upload_images/28020825-8f914692886fa6d0.jpg",
      cover:
          "https://upload-images.jianshu.io/upload_images/28020825-fad7d1a9c9a98051.jpg",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 扩展到包括应用栏的高度和主体的顶部 与应用栏的顶部对齐。
      extendBodyBehindAppBar: true,
      // 导航栏
      appBar: AppBarWidget(
        actions: [
          // 拍照按钮
          GestureDetector(
            onTap: _onPublish,
            child: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.camera_alt),
            ),
          ),
        ],
      ),
      // 正文
      body: _mainView(),
    );
  }

  // 发布事件
  void _onPublish() async {
    Navigator.of(context).push(MaterialPageRoute(
        fullscreenDialog: true,
        builder: (BuildContext context) {
          return ProWechatPost();
        }));
  }

  // 主视图
  Widget _mainView() {
    return Column(
      children: [
        _buildHeader(),
      ],
    );
  }

  // 顶部
  Widget _buildHeader() {
    // 屏幕宽度
    final double width = MediaQuery.of(context).size.width;
    return _user == null
        ? const SizedBox.square()
        : Stack(
            children: [
              // 背景
              SizedBox(
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ExtendedImage.network(
                    _user?.cover ?? "",
                    height: width * 0.75,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // 昵称、头像
              Positioned(
                right: 8,
                bottom: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // 昵称
                    Text(
                      _user?.nickname ?? "",
                      style: const TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        fontSize: 18,
                        height: 1.8,
                        fontWeight: FontWeight.bold,
                        // 文字阴影
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(1, 1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                    // 头像
                    ExtendedImage.network(
                      _user?.avator ?? "",
                      height: 48,
                      width: 48,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ],
          );
  }
}
