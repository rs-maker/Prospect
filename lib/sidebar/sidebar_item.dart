import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Function method;

  const SideBarItem({Key key, this.iconData, this.title, this.method}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: method,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Icon(
              iconData,
              color: Theme.of(context).secondaryHeaderColor,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            )
          ],
        ),
      ),
    );
  }
}
