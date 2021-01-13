import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final String title;
  final String content;
  final bool first;

  const TextBlock({Key key, this.title, this.content, this.first})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(padding: first ? const EdgeInsets.only(top: 70) : const EdgeInsets.only(top: 30)),
          Text(
            title,
            style: first
                ? TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Theme.of(context).dividerColor)
                : TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Theme.of(context).dividerColor),
            textAlign: TextAlign.center,
          ),
          Padding(padding: const EdgeInsets.only(bottom: 20)),
          Text(
            content,
            textAlign: TextAlign.left,
            style: TextStyle(color: Theme.of(context).indicatorColor, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
