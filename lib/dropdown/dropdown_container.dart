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
              children: wrapChildren(items),
            ),
          ),
        ),
      ],
    );
  }
  // the items need a reference to the customdropdown (parent) in order to close the box when the user clicks a link thats why we have to wrap it here also to set the IsFirst and IsLast params
  //and to wrap everything in an expanded widget
  List<Widget> wrapChildren(List<DropDownItem> items){
    List<Widget> container = [];
    int index = 0;
    for(DropDownItem item in items){
      container.add(Expanded(
        child: DropDownItem(
          navigationEvent: item.navigationEvent,
          text: item.text,
          icon: item.icon,
          isFirstItem: index == 0? true : false,
          isLastItem: index  == items.length -1 ? true : false,
          pageNavigation: item.pageNavigation,
          parent: parent,
        ),
      ));
      index++;
    }
    return container;
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
