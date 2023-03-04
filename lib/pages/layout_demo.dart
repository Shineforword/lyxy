// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconBadge(icon: Icons.pool),
        IconBadge(icon: Icons.beach_access, size: 64),
        SizedBox(
          width: 50,
          height: 50,
          child: Container(
              alignment: Alignment(1.0, 0.2),
              // alignment: Alignment.center,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              child: Text(
                "SB",
                style: TextStyle(color: Colors.white),
              )),
        ),
        IconBadge(icon: Icons.airplanemode_active)
      ],
    ));
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  const IconBadge({Key? key, required this.icon, this.size = 32.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size + 60,
      height: size + 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}

/// 宽高比设置 AspectRatio
/// 带限制的的盒子ConstrainedBox