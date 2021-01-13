import 'package:flutter/material.dart';
import 'TextBlockLayout.dart';

class TextPage extends StatelessWidget {
  final TextBlock textBlock0;
  final TextBlock textBlock1;
  final Image image0;

  const TextPage({
    Key key,
    this.textBlock0,
    this.textBlock1,
    this.image0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          textBlock0,
          image0 == null ? Container() : image0,
          textBlock1 == null ? Container() : textBlock1,
        ],
      ),
    );
  }
}
