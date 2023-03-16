## SliverListDemo 
```dart
class SliverListDemo extends StatelessWidget {
  const SliverListDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
              padding: EdgeInsets.only(bottom: 32.0),
              child: Material(
                  borderRadius: BorderRadius.circular(12.0),
                  elevation: 12.0,
                  shadowColor: Colors.grey,
                  child: Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Image.network(
                            posts[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 32.0,
                        left: 32.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(posts[index].title,
                                style: TextStyle(
                                    fontSize: 22.0, color: Colors.white)),
                            Text(posts[index].author,
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.white))
                          ],
                        ),
                      ),
                    ],
                  )));
        },
        childCount: posts.length,
      ),
    );
  }
}


```

## slivers CustomScrollView
```dart
(new) CustomScrollView CustomScrollView({
  Key? key,
  Axis scrollDirection = Axis.vertical,
  bool reverse = false,
  ScrollController? controller,
  bool? primary,
  ScrollPhysics? physics,
  ScrollBehavior? scrollBehavior,
  bool shrinkWrap = false,
  Key? center,
  double anchor = 0.0,
  double? cacheExtent,
  List<Widget> slivers = const <Widget>[],
  int? semanticChildCount,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  String? restorationId,
  Clip clipBehavior = Clip.hardEdge,
})
```

```dart
(new) SliverList SliverList({Key? key, required SliverChildDelegate delegate})

```