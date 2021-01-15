import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final String title;
  final String content;
  final double titleSize;
  final double contentSize;

  const TextBlock(
      {Key key,
      this.title,
      this.content,
      this.titleSize,
      this.contentSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          title == ""
              ? Container()
              : Padding(
                  padding: titleSize > 24
                      ? const EdgeInsets.only(top: 70)
                      : const EdgeInsets.only(top: 30)),
          Text(
            title,
            style: TextStyle(
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).dividerColor),
            textAlign: TextAlign.center,
          ),
          title == ""
              ? Container()
              : Padding(padding: const EdgeInsets.only(bottom: 10)),
          content == ""
              ? Container()
              : Text(
                  content,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Theme.of(context).indicatorColor,
                      fontSize: contentSize),
                ),
        ],
      ),
    );
  }
}
