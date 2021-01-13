import 'package:flutter/material.dart';
import 'package:prospect/dropdown/custom_dropdown.dart';

class DropDownItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isFirstItem;
  final bool isLastItem;
  final Function sideBarNavigation;
  final CustomDropDownState parent;

  DropDownItem({
    Key key,
    this.text,
    this.icon,
    this.isFirstItem = false,
    this.isLastItem = false,
    this.sideBarNavigation,
    this.parent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
            top: isFirstItem ? Radius.circular(8) : Radius.zero,
            bottom: isLastItem ? Radius.circular(8) : Radius.zero),
        color: Theme.of(context).secondaryHeaderColor,
      ),
      child: GestureDetector(
        child: Row(
          children: [
            Text(
              text.toUpperCase(),
              style: TextStyle(
                color: Theme.of(context).indicatorColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            RaisedButton(
              onPressed: (){
                parent.onButtonPressed();
                sideBarNavigation(text);
              },
              child: Icon(
                icon,
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          ],
        ),
        onTap: () {
          parent.onButtonPressed();
          sideBarNavigation(text);
        },
      ),
    );
  }
}
