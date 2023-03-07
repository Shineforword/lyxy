// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lyxy_app/pages/pro_zone/pro_wechat_post.dart';

import './pro_login.dart';

class ProMy extends StatelessWidget {
  const ProMy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        // : Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MineHeader(),
            SizedBox(height: 10),
            ProMyItem(
                title: "Service",
                icon:
                    Icon(Icons.medical_services, size: 20, color: Colors.blue)),
            SizedBox(height: 10),
            ProMyItem(
                title: "Collection",
                icon: Icon(Icons.collections, size: 20, color: Colors.blue)),
            ProMyItem(
                itemClicked: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (BuildContext context) {
                        return ProWechatPost();
                      }));
                },
                title: "Zone",
                icon: Icon(Icons.child_friendly, size: 20, color: Colors.blue)),
            ProMyItem(
                title: "Wallet",
                icon:
                    Icon(Icons.wallet_giftcard, size: 20, color: Colors.blue)),
            ProMyItem(
                title: "Expression",
                icon: Icon(Icons.fingerprint, size: 20, color: Colors.blue)),
            SizedBox(height: 10),
            ProMyItem(
                title: "Setting",
                icon: Icon(Icons.settings, size: 20, color: Colors.blue)),
            SizedBox(height: 300),
          ],
        ),
      ),
    );
  }
}

class MineHeader extends StatelessWidget {
  const MineHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              alignment: Alignment.center,
              image: NetworkImage(
                  "https://upload-images.jianshu.io/upload_images/28020825-a627feb784ab8bd9.jpg"),
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(255, 131, 132, 137), BlendMode.hue))),
      child: Stack(
        children: [
          Positioned(
              left: 30,
              bottom: 100,
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (BuildContext context) {
                          return ProLogin();
                        }));
                  },
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://upload-images.jianshu.io/upload_images/28020825-02d92d36b48c490d.jpg"),
                    ),
                  ))),
          Positioned(
            left: 130,
            bottom: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    "州",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: Text(
                    "Chat-Name:Lyxy-666",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// - item
typedef ItemClickedCallback = void Function();

class ProMyItem extends StatelessWidget {
  final String title;
  final Icon icon;
  final ItemClickedCallback? itemClicked;

  const ProMyItem(
      {Key? key, required this.title, required this.icon, this.itemClicked})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: itemClicked,
      child: _builderItem(),
    );
  }

  Widget _builderItem() {
    return Container(
        height: 64,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                height: 63,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      SizedBox(
                        width: 15,
                      ),
                      icon,
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        title,
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                    ]),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.arrow_right_sharp,
                          size: 20, color: Colors.grey),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 15),
              height: 1,
              width: double.infinity,
              color: Colors.grey[100],
            )
          ],
        ));
  }
}
