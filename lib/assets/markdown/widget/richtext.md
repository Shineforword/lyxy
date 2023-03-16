## rich text
```dart
(new) RichText RichText({
  Key? key,
  required InlineSpan text,
  TextAlign textAlign = TextAlign.start,
  TextDirection? textDirection,
  bool softWrap = true,
  TextOverflow overflow = TextOverflow.clip,
  double textScaleFactor = 1.0,
  int? maxLines,
  Locale? locale,
  StrutStyle? strutStyle,
  TextWidthBasis textWidthBasis = TextWidthBasis.parent,
  TextHeightBehavior? textHeightBehavior,
  SelectionRegistrar? selectionRegistrar,
  Color? selectionColor,})
```

## eg
```dart
 RichText(
        text: const TextSpan(
            text: "Qian",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 150,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100),
            children: [
              TextSpan(
                  text: ".com",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                  ))
            ]),
        textAlign: TextAlign.left,
      ),
```
