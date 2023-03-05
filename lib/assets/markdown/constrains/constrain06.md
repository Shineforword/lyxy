``` dart
        body: Stack(
          alignment: Alignment.center,
          // 裁切
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.amber,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blueGrey,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            // 绝对定位
            Positioned(
                left: 250,
                bottom: 0,
                child: FlutterLogo(
                  size: 100,
                ))
          ],
        ))
```