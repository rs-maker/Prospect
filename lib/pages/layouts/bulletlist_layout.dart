import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> strings;
  final String title;

  const BulletList({Key key, this.strings, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ListTile> tiles = createTiles(strings, context);
    title != null ? tiles.insert(0, ListTile(title: Text(title, style: TextStyle(color: Theme.of(context).dividerColor,fontSize: 24, fontWeight: FontWeight.w600),),)) : doNothing();
    return Column(
      children: tiles,
    );
  }
  void doNothing(){}

  List<ListTile> createTiles(List<String> strings, context) {
    List<ListTile> container = [];
    for (String string in strings) {
      container.add(ListTile(
        leading: MyBullet(),
        title: Text(string, style: TextStyle(color: Theme.of(context).indicatorColor, fontSize: 18),),
      ));
    }
    return container;
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: Theme.of(context).dividerColor,
        shape: BoxShape.rectangle,
      ),
    );
  }
}
