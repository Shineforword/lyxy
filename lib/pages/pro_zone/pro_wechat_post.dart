// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lyxy_app/pages/pro_zone/entity/index.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import '../../utils/config.dart';
import 'post_appbar.dart';
import 'pro_gallery.dart';

class ProWechatPost extends StatefulWidget {
  const ProWechatPost({Key? key}) : super(key: key);

  @override
  _ProWechatPostState createState() => _ProWechatPostState();
}

class _ProWechatPostState extends State<ProWechatPost> {
  // 已选中列表
  List<AssetEntity> _selectedAssets = [];
  // 是否开始拖拽
  bool isDragNow = false;
  // 是否删除
  bool isWillRemove = false;
  // 是否将要排序
  bool isWillOrder = false;
  // 被拖拽的target id
  String targatAssetId = "";
  // 内容输入控制器
  final TextEditingController contentController = TextEditingController();
  // 菜单列表
  List<MenuItemModel> menus = [];
  @override
  void dispose() {
    contentController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    menus = [
      MenuItemModel(icon: Icons.location_on_outlined, title: "所在位置"),
      MenuItemModel(icon: Icons.alternate_email_outlined, title: "提醒谁看"),
      MenuItemModel(
        icon: Icons.person_outline,
        title: "谁可以看",
        right: "公开",
        onTap: () {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
            //右侧
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          ButtonStyleButton.allOrNull(Colors.green)),
                  onPressed: () {},
                  child: const Text("发布"),
                ),
              ),
            ],
            // 左侧
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black38,
              ),
            )),
        body: _buildMainView(),
        //_buildRemoveBar可以放在此处
        bottomSheet: isDragNow ? _buildRemoveBar() : null);
  }

  // 主图
  Widget _buildMainView() {
    return Column(
      children: [
        // 内容输入
        _buildContentInput(),
        // 相册列表
        _bulidPhotoList(),
        //
        _buildMenus()
      ],
    );
  }

  Widget _buildContentInput() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: LimitedBox(
        maxHeight: 200,
        child: TextField(
          controller: contentController,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          maxLines: null,
          maxLength: 250,
          decoration: InputDecoration(
            hintText: '这一刻的想法...',
            hintStyle: const TextStyle(
              color: Colors.black12,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            border: InputBorder.none,
            counterText: contentController.text.isEmpty ? "" : null,
          ),
          onChanged: (value) {
            setState(() {});
          },
        ),
      ),
    );
  }

  // 图片项
  Widget _buildPhotoItem(AssetEntity asset, double width) {
    return Draggable(
        //数据
        data: asset,
        // 开始拖拽
        onDragStarted: () {
          setState(() {
            isDragNow = true;
          });
        },
        //结束拖拽
        onDragEnd: (details) {
          setState(() {
            isDragNow = false;
          });
        },
        // 拖拽(当dragable 被放置并被[DragTaarget]接收时调用)
        onDragCompleted: () {},
        // 拖拽(当dragable 被放置并被[DragTaarget]但并未被接收时调用)
        onDraggableCanceled: (velocity, offset) {},
        //拖动时显示在指针下方的控件
        feedback: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
          child: AssetEntityImage(
            asset,
            width: width,
            height: width,
            fit: BoxFit.cover,
            isOriginal: false,
          ),
        ),
        // 正在进行一个或者多个拖动时 显示的小部件而不是child
        childWhenDragging: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
          child: AssetEntityImage(
            asset,
            width: width,
            height: width,
            fit: BoxFit.cover,
            isOriginal: false,
            opacity: AlwaysStoppedAnimation(0.5),
          ),
        ),
        child: DragTarget<AssetEntity>(
          onWillAccept: (data) {
            setState(() {
              isWillOrder = true;
              targatAssetId = asset.id;
            });
            return true;
          },
          onAccept: (data) {
            //
            final int index = _selectedAssets.indexOf(data);
            final int targetIndex = _selectedAssets.indexOf(asset);
            _selectedAssets.removeAt(index);
            _selectedAssets.insert(targetIndex, data);
            debugPrint("targetIndex:$targetIndex,dragIndex:$index");
            setState(() {
              isWillOrder = false;
              targatAssetId = "";
              _selectedAssets = _selectedAssets;
            });
          },
          onLeave: (data) {
            setState(() {
              isWillOrder = false;
              targatAssetId = "";
            });
          },
          builder: (context, candidateData, rejectedData) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProGallery(
                      initialIndex: _selectedAssets.indexOf(asset),
                      items: _selectedAssets,
                    );
                  }));
                },
                child: Container(
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
                ));
          },
        ));
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
                _buildPhotoItem(asset, width),
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
                ),
              if (_selectedAssets.length < 2) Container()
            ],
          );
        }));
  }

  // 删除Bar
  Widget _buildRemoveBar() {
    return DragTarget<AssetEntity>(
      //调用以构建小部件的内容
      builder: (context, candidateData, rejectData) {
        return SizedBox(
          width: double.infinity,
          child: Container(
            height: 120,
            color: isWillRemove ? Colors.red[300] : Colors.red[200],
            child: Column(
              // 图片
              children: [
                Icon(Icons.delete,
                    size: 32,
                    color: isWillRemove ? Colors.white : Colors.white24),
                Text(
                  "拖拽到这里删除",
                  style: TextStyle(
                      fontSize: 16,
                      color: isWillRemove ? Colors.white : Colors.white24),
                )
              ],
              // 文字
            ),
          ),
        );
      },
      //调用以确定此小部件是否有兴趣接收给定被拖动目标上的数据片段
      onWillAccept: (data) {
        setState(() {
          isWillRemove = true;
        });
        return true;
      },
      // 当一条可被接受的数据拖放到这个目标上时调用
      onAccept: (data) {
        setState(() {
          _selectedAssets.remove(data);
          isWillRemove = false;
        });
      },
      // 当被拖动到该目标上的给定数据离开时调用
      onLeave: (data) {},
    );
  }

  // 菜单项目
  Widget _buildMenus() {
    List<Widget> ws = [];
    // ws.add(const DividerWidget());
    for (var menu in menus) {
      ws.add(ListTile(
        leading: Icon(menu.icon),
        title: Row(
          children: [
            Text(menu.title ?? ""),
            if (menu.right != null) const Spacer(),
            if (menu.right != null) Text(menu.right!),
          ],
        ),
        trailing: const Icon(Icons.navigate_next_rounded),
        // contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        horizontalTitleGap: -5, // 标题与图标间距
      ));
      // ws.add(const DividerWidget());
    }
    return Column(children: ws);
  }
}
