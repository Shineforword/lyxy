// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lyxy_app/project/pro_bottom_tab.dart';

import '../common/app_colors.dart';
import '../common/assets.dart';
import '../pages/pro_welcome.dart';

class ProSplashPage extends StatefulWidget {
  const ProSplashPage({Key? key}) : super(key: key);

  @override
  State<ProSplashPage> createState() => _ProSplashPageState();
}

class _ProSplashPageState extends State<ProSplashPage> {
  int number = 3;
  // 倒计时
  Future<void> _countdown() async {
    const int duration = 3;
    for (int i = 0; i < duration; i++) {
      await Future.delayed(const Duration(seconds: 1), () {
        if (mounted == true) {
          setState(() {
            number--;
          });
        }
      });
      // 倒计时结束, 进入 welcome
      if (number == 0) {
        // ProWelcome ProBottomTab
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ProWelcome()));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _countdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.backgroundSplash,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Many thanks for us to do sth ® ",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"),
              ),
              SizedBox(height: 20),
              // 图标
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AssetsImages.logo,
                    fit: BoxFit.cover,
                  ),
                  // 底部
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(120 / 2),
                    ),
                  ),
                  FlutterLogo(size: 30)
                ],
              ),
              // 间距
              SizedBox(height: 20),
              // 计时器
              Text(
                // '${number == 0 ? "Welcome" : number}',
                "Welcome ${number == 0 ? "done" : "($number s)"}",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
