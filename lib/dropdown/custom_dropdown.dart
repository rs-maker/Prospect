import 'package:flutter/material.dart';
import 'package:prospect/dropdown/dropdown_container.dart';
import 'dropdown_item.dart';

class CustomDropDown extends StatefulWidget {
  final String string;
  final List<DropDownItem> items;

  const CustomDropDown({
    Key key,
    this.items,
    this.string,
  }) : super(key: key);

  @override
  CustomDropDownState createState() => CustomDropDownState();
}

class CustomDropDownState extends State<CustomDropDown> {
  GlobalKey actionKey;
  double height, width, xPosition, yPosition;
  bool isDropDownOpened = false;
  OverlayEntry floatingDropDown;

  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.string);
    super.initState();
  }

  void findDropDownData() {
    RenderBox renderBox = actionKey.currentContext.findRenderObject();
    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
  }

  OverlayEntry _createFloatingDropDown() {
    return OverlayEntry(
        builder: (context) => Positioned(
              left: xPosition,
              width: width,
              top: yPosition + height,
              height: widget.items.length * height + 40,   //TODO: '45' is a magic number which should be avoided but right now it is what works
              child: DropDownContainer(
                parent: this,
                items: widget.items,
                itemHeight: height,
              ),
            ));
  }
  void printTest(){print("WORKS");}

  void onButtonPressed() {
    setState(() {
      if (isDropDownOpened) {
        floatingDropDown.remove();
      } else {
        findDropDownData();
        floatingDropDown = _createFloatingDropDown();
        Overlay.of(context).insert(floatingDropDown);
      }
      isDropDownOpened = !isDropDownOpened;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: actionKey,
      onTap: onButtonPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).secondaryHeaderColor,
        ),
        child: Row(
          children: [
            Text(
              widget.string.toUpperCase(),
              style: TextStyle(
                color: Theme.of(context).indicatorColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_drop_down,
              color: Theme.of(context).indicatorColor,
            ),
          ],
        ),
      ),
    );
  }
}
