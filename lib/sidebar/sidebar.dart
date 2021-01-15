import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/dropdown/custom_dropdown.dart';
import 'package:prospect/dropdown/dropdown_item.dart';
import 'package:prospect/sidebar/sidebar_item.dart';
import 'package:rxdart/rxdart.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> with SingleTickerProviderStateMixin {
  final GlobalKey<CustomDropDownState> _key = GlobalKey();
  AnimationController _animationController;
  StreamController<bool> isSideBarOpenedStreamController;
  Stream<bool> isSideBarOpenedStream;
  StreamSink<bool> isSideBarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSideBarOpenedStreamController = PublishSubject<bool>();
    isSideBarOpenedStream = isSideBarOpenedStreamController.stream;
    isSideBarOpenedSink = isSideBarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSideBarOpenedStreamController.close();
    isSideBarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final animationCompleted = animationStatus == AnimationStatus.completed;
    if (animationCompleted) {
      isSideBarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSideBarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    print("THIS IS MY SCREENWIDTH   " + screenWidth.toString());
    return StreamBuilder<bool>(
      initialData: false,
      stream: isSideBarOpenedStream,
      builder: (context, isSideBarOpenedAsync) => AnimatedPositioned(
        duration: _animationDuration,
        top: 0,
        bottom: 0,
        left: isSideBarOpenedAsync.data ? 0 : -screenWidth,
        right: isSideBarOpenedAsync.data
            ? (screenWidth > 500 ? screenWidth - 350 : 0)
            : screenWidth - 30,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Theme.of(context).primaryColor,
                child: Column(children: <Widget>[
                  /*                  THIS IS WHERE THE SIDEBAR ITEMS GO                                  */
                  Padding(padding: const EdgeInsets.only(top: 60)),
                  Image.asset(
                    'images/tum.png',
                    width: 200,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Padding(padding: const EdgeInsets.only(top: 40)),
                  SideBarItem(
                    iconData: Icons.home,
                    title: "Homepage",
                    method: () {
                      if (_key.currentState.isDropDownOpened)
                        _key.currentState.onButtonPressed();
                      navigatePage(NavigationEvent.HomePageClickEvent);
                    },
                  ),
                  CustomDropDown(
                    key: _key,
                    //this global Key allows us to close the drop down when a button in the sidebar is pressed -> eventually it would be cool if the drop down could stay open and stick with the sidebar
                    // TODO: this should not happen in this class. we should pass CustomDropDown a reference to Sidebar and create a navigation function inside the DropDownItem class
                    // ^ turns out this is a lot more complicated than it seems at first glance
                    items: [
                      //when creating DropDownItems here be aware that they are changed in dropdown_container class before being displayed
                      DropDownItem(
                        text: "Intro",
                        icon: Icons.security,
                        pageNavigation: navigatePage,
                        navigationEvent: NavigationEvent.FirstPageClickEvent,
                      ),
                      DropDownItem(
                        text: "Second",
                        icon: Icons.security,
                        pageNavigation: navigatePage,
                        navigationEvent: NavigationEvent.SecondPageClickEvent,
                      ),
                      DropDownItem(
                        text: "Third",
                        icon: Icons.security,
                        pageNavigation: navigatePage,
                        navigationEvent: NavigationEvent.ThirdPageClickEvent,
                      ),
                      DropDownItem(
                        text: "Fourth",
                        icon: Icons.security,
                        pageNavigation: navigatePage,
                        navigationEvent: NavigationEvent.FourthPageClickEvent,
                      ),
                      DropDownItem(
                          text: "Fifth",
                          icon: Icons.accessible_forward_rounded,
                          pageNavigation: navigatePage,
                          navigationEvent: NavigationEvent.FifthPageClickEvent),
                      DropDownItem(
                        text: "Sixth",
                        icon: Icons.accessibility_rounded,
                        pageNavigation: navigatePage,
                        navigationEvent: NavigationEvent.SixthPageClickEvent,
                      )
                    ],
                    string: "Roaccutane",
                  ),
                ]),
              ),
            ),
            /* THIS IS THE SIDEBAR OPEN/CLOSE BUTTON */
            Align(
              alignment: Alignment(0, -0.6),
              child: GestureDetector(
                onTap: () {
                  if (_key.currentState.isDropDownOpened)
                    _key.currentState.onButtonPressed();
                  onIconPressed();
                },
                child: ClipPath(
                  clipper: CustomMenuClipper(),
                  child: Container(
                    width: 35,
                    height: 110,
                    color: Theme.of(context).primaryColor,
                    alignment: Alignment.centerLeft,
                    child: AnimatedIcon(
                      progress: _animationController.view,
                      icon: AnimatedIcons.menu_close,
                      color: Theme.of(context).secondaryHeaderColor,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // on IconPressed() -> opens/closes the sidebar and the second line navigates to whatever page you want it to navigate to
  //i pass this to pretty much every button that does those things
  void navigatePage(NavigationEvent event) {
    onIconPressed();
    BlocProvider.of<NavigationBloc>(context).add(event);
  }
}

/* THIS CREATES THE ROUND SIDEBAR BUTTON SHAPE */
class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
