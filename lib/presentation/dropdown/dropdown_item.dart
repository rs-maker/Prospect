import 'package:flutter/material.dart';
import 'package:prospect/presentation/router/navigation_bloc.dart';
import 'package:prospect/presentation/dropdown/custom_dropdown.dart';

class DropDownItem extends StatelessWidget {
  final NavigationEvent navigationEvent;
  final String text;
  final IconData icon;
  final bool isFirstItem;
  final bool isLastItem;
  final Function pageNavigation;
  final CustomDropDownState parent;

  DropDownItem({
    Key key,
    this.text,
    this.icon,
    this.isFirstItem = false,
    this.isLastItem = false,
    this.pageNavigation,
    this.parent, this.navigationEvent,
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
              text,
              style: Theme.of(context).textTheme.headline3,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                parent.onButtonPressed();
                print(navigationEvent.toString());
                pageNavigation(navigationEvent);
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

          pageNavigation(text);
        },
      ),
    );
  }
}
