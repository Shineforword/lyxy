````dart
        body: Align(
          // Align 高宽因子 调试器查看 (子元素的宽高倍数) - 不设置即Align充满body
          widthFactor: 2,
          heightFactor: 2,
          alignment: Alignment.centerLeft,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          // 裁切
        ));
````