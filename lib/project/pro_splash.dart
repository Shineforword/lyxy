// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:lyxy_app/project/pro_bottom_tab.dart';

import '../common/app_colors.dart';
import '../common/assets.dart';

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
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => ProBottomTab()));
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
              // 图标
              Stack(
                alignment: Alignment.center,
                children: [
                  // 底部
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(120 / 2),
                    ),
                  ),
                  // 图标
                  Container(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      AssetsImages.logo,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  )),
                  //
                  FlutterLogo(size: 30)
                ],
              ),

              // 间距
              const SizedBox(height: 24),

              // 文字
              const Text(
                'Online Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // 间距
              const SizedBox(height: 20),
              // 计时器
              Text(
                '${number == 0 ? "" : number}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
