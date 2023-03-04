import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // const DrawerHeader(
          //   child: Text("this is a drawer"),
          // ),
          const UserAccountsDrawerHeader(
            accountName: Text(
              "Qian",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              "qian@163.com",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.w400),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://upload-images.jianshu.io/upload_images/28020825-02d92d36b48c490d.jpg"),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        "https://upload-images.jianshu.io/upload_images/28020825-3b903fc1a5a53dfa.jpg"))),
          ),
          // ignore: prefer_const_constructors
          ListTile(
            title: Text(
              "Messages",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black87,
              size: 18.0,
            ),
          ),
          ListTile(
            title: Text(
              "Fav",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black87,
              size: 18.0,
            ),
          ),
          ListTile(
              title: Text(
                "Setting",
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.settings,
                color: Colors.black87,
                size: 18.0,
              ),
              enabled: true,
              onTap: () {
                Navigator.of(context).pop();
              })
        ],
      ),
    );
  }
}
