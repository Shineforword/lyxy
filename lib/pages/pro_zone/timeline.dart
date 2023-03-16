// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:lyxy_app/api/timeline.dart';
import 'package:lyxy_app/model/timeline/timeline.dart';
import 'package:lyxy_app/pages/pro_zone/post_appbar.dart';
import 'package:lyxy_app/pages/pro_zone/pro_wechat_post.dart';

import '../../utils/index.dart';
import '../../widgets/index.dart';
import 'entity/index.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  // 用户资料
  UserModel? _user;
  // 列表
  List<TimelineModel> _items = [];
  // 载入数据
  Future _loadData() async {
    var resluts = await TimelineApi.pageLocationList();
    if (mounted) {
      setState(() {
        _items = resluts;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // 初始用户资料
    _user = const UserModel(
      nickname: "敦煌",
      avator:
          "https://upload-images.jianshu.io/upload_images/28020825-8f914692886fa6d0.jpg",
      cover:
          "https://upload-images.jianshu.io/upload_images/28020825-fad7d1a9c9a98051.jpg",
    );
    //
    if (mounted) {
      setState(() {});
    }
    //
    _loadData();
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
    return CustomScrollView(
      // controller: _scrollController,
      slivers: [
        // 头部
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: _buildHeader(),
          ),
        ),

        // 数据列表
        _buildList(),
      ],
    );
  }

  // 动态列表
  Widget _buildList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          var item = _items[index];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildListItem(item),
              ),
              const SpaceVerticalWidget(),
            ],
          );
        },
        childCount: _items.length,
      ),
    );
  }

  // 动态数据项
  Widget _buildListItem(TimelineModel item) {
    int imgCount = item.images?.length ?? 0;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // 圆角头像
        ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Image.network(
            item.user?.avator ?? "",
            height: 48,
            width: 48,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: spaceing),

        // 右侧
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // 昵称
              Text(
                item.user?.nickname ?? "",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              const SpaceVerticalWidget(),

              // 内容
              Text(
                item.content ?? "",
                style: const TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              const SpaceVerticalWidget(),

              // 9宫格图片
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double ingWidth = imgCount == 1
                      ? constraints.maxWidth * 0.7
                      : (constraints.maxWidth -
                              spaceing * 2 -
                              imagePadding * 2 * 3) /
                          3;
                  return Wrap(
                    spacing: spaceing,
                    runSpacing: spaceing,
                    children: [
                      for (var item in item.images ?? [])
                        Image.network(
                          DuTools.imageUrlFormat(item ?? "",
                              width: imgCount == 1 ? 400 : null),
                          height: ingWidth,
                          width: ingWidth,
                          fit: BoxFit.cover,
                        ),
                    ],
                  );
                },
              ),
              const SpaceVerticalWidget(),

              // 位置
              Text(
                item.location ?? "",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              const SpaceVerticalWidget(),

              // 时间
              Text(
                item.publishDate ?? "",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              const SpaceVerticalWidget(),
            ],
          ),
        ),
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
