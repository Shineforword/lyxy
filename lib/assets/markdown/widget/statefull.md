```dart
class LyxyWidgetFull extends StatefulWidget {
  const LyxyWidgetFull({Key? key}) : super(key: key);

  @override
  _LyxyWidgetFullState createState() => _LyxyWidgetFullState();
}

class _LyxyWidgetFullState extends State<LyxyWidgetFull> {
  String imageUrl = img1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              imageUrl = imageUrl == img1 ? img2 : img1;
            });
          },
          child: Text("切换"),
        ),
        AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            )),
        SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: imageWidget(url: imageUrl),
        )
      ],
    );
  }

```