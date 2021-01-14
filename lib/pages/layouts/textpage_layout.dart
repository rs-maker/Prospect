import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  final List<Widget> children;

  const TextPage({
    Key key,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          children: children
          ),
    );
  }
}
