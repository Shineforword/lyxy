// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import 'slide_appbar.dart';

// 图像浏览器
class ProGallery extends StatefulWidget {
  // 初始图片位置
  final int initialIndex;
  // 图片
  final List<AssetEntity> items;
  // 是否显示bar
  final bool? isBarVisible;

  //
  const ProGallery(
      {Key? key,
      required this.initialIndex,
      required this.items,
      this.isBarVisible})
      : super(key: key);

  @override
  _ProGalleryState createState() => _ProGalleryState();
}

class _ProGalleryState extends State<ProGallery>
    with SingleTickerProviderStateMixin {
  // SingleTickerProviderStateMixin 防止界面动画外溢
  bool visible = true;
  // 动画控制器
  late final AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    visible = widget.isBarVisible ?? true;
    controller =
        AnimationController(vsync: this, duration: Duration(microseconds: 400));
  }

  @override
  Widget build(BuildContext context) {
    return _mainView();
  }

  // 主视图
  Widget _mainView() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      // onTap: () => Navigator.pop(context),
      onTap: () {
        setState(() {
          visible = !visible;
        });
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        appBar: SlideAppBarWidget(
          controller: controller,
          visible: visible,
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
        body: _buildImageView(),
      ),
    );
  }

  Widget _buildImageView() {
    return ExtendedImageGesturePageView.builder(
      controller: ExtendedPageController(
        initialPage: widget.initialIndex,
      ),
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        final AssetEntity item = widget.items[index];
        return ExtendedImage(
          image: AssetEntityImageProvider(
            item,
            isOriginal: true,
          ),
          fit: BoxFit.contain,
          mode: ExtendedImageMode.gesture,
          initGestureConfigHandler: ((state) {
            return GestureConfig(
              minScale: 0.9,
              animationMinScale: 0.7,
              maxScale: 3.0,
              animationMaxScale: 3.5,
              speed: 1.0,
              inertialSpeed: 100.0,
              initialScale: 1.0,
              inPageView: true, // 是否使用 ExtendedImageGesturePageView 展示图片
            );
          }),
        );
      },
    );
  }
}
