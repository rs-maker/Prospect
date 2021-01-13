import 'package:flutter/material.dart';
import 'package:prospect/dropdown/dropdown_item.dart';
import 'custom_dropdown.dart';

class DropDownContainer extends StatelessWidget {
  final double itemHeight;
  final List<DropDownItem> items;
  final CustomDropDownState parent;

  const DropDownContainer({
    Key key,
    this.itemHeight,
    this.items,
    this.parent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DropDownItem item0 = items[0];
    DropDownItem item1 = items[1];
    DropDownItem item2 = items[2];
    DropDownItem item3 = items[3];
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment(0.92, 0),
          child: ClipPath(
            clipper: ArrowClipper(),
            child: Container(
              height: 10,
              width: 30,
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: Container(
            height: items.length * itemHeight,
            decoration: BoxDecoration(
              color: Theme.of(context).secondaryHeaderColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: <Widget>[
                // THIS IS WHERE THE DROP DOWN ITEMS GO
                //Here i am trying to use callbacks
                Expanded(
                    child: DropDownItem(
                  text: item0.text,
                  icon: item0.icon,
                  isFirstItem: true,
                  sideBarNavigation: item0.sideBarNavigation,
                  parent: parent,
                )),
                Expanded(
                    child: DropDownItem(
                  text: item1.text,
                  icon: item1.icon,
                  sideBarNavigation: item1.sideBarNavigation,
                  parent: parent,
                )),
                Expanded(
                    child: DropDownItem(
                  text: item2.text,
                  icon: item2.icon,
                  sideBarNavigation: item2.sideBarNavigation,
                  parent: parent,
                )),
                Expanded(
                    child: DropDownItem(
                  text: item3.text,
                  icon: item3.icon,
                  isLastItem: true,
                  sideBarNavigation: item3.sideBarNavigation,
                  parent: parent,
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//this creates the little arrow on top of the dropdown box
class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
