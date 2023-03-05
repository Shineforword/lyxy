``` dart
     body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  // 点击
                  onPressed: () {},
                  // 长按
                  onLongPress: () {},
                  //hover
                  onFocusChange: null,
                  onHover: null,
                  //样式
                  style: ButtonStyle(
                      //文字
                      textStyle: null,
                      //
                      backgroundColor: null,
                      foregroundColor: null,
                      // 鼠标滑过
                      overlayColor: null,
                      // 阴影
                      shadowColor: null,
                      //  阴影高度
                      elevation: null,
                      // 内边距
                      padding: null,
                      // 最小尺寸
                      minimumSize: null,
                      maximumSize: null,
                      //固定尺寸
                      fixedSize: null,
                      //边框
                      side: null,
                      //形状
                      shape: null,
                      //鼠标光标
                      mouseCursor: null,
                      //紧凑程度
                      visualDensity: null,
                      //配置可以按下按钮的尺寸
                      tapTargetSize: null,
                      // 定义[shape] 和 [elevation]的动画更改持续时间
                      animationDuration: null,
                      //检测到手势是否应该提供反馈
                      enableFeedback: null,
                      //子元素对齐效果
                      alignment: null,
                      //墨水效果
                      splashFactory: null),
                  //焦点
                  focusNode: null,
                  autofocus: false,

                  ///裁切
                  clipBehavior: Clip.none,
                  //
                  child: Text("ElevatedButton")),
              TextButton(onPressed: null, child: Text("文本按钮")),
              OutlinedButton(onPressed: null, child: Text("边框按钮")),
              IconButton(
                  onPressed: () {},
                  iconSize: 50,
                  icon: Icon(
                    Icons.home,
                    color: Colors.amber,
                  )),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("带图标的TextButton")),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("带图标的OutlinedButton"))
            ],
          ),
        ))
```