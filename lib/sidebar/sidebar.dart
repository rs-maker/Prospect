import 'dart:async';
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

    return StreamBuilder<bool>(
      initialData: false,
      stream: isSideBarOpenedStream,
      builder: (context, isSideBarOpenedAsync) => AnimatedPositioned(
        duration: _animationDuration,
        top: 0,
        bottom: 0,
        left: isSideBarOpenedAsync.data ? 0 : -screenWidth,
        right: isSideBarOpenedAsync.data ? 0 : screenWidth - 45,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                //TODO: CHECK IF THIS IS NEEDED
                color: Theme.of(context).primaryColor,
                child: Column(children: <Widget>[
                  /*                  THIS IS WHERE THE SIDEBAR ITEMS GO                                  */
                  SideBarItem(
                    iconData: Icons.home,
                    title: "Homepage",
                    method: () {
                      if (_key.currentState.isDropDownOpened)
                        _key.currentState.onButtonPressed();
                      navigatePage("Home");
                    },
                  ),
                  CustomDropDown(
                    key: _key,
                    //this gloabal Key allows us to close the drop down when a button in the sidebar is pressed -> eventually it would be cool if the drop down could stay open and stick with the sidebar
                    // we need to initialise the DropDownItems here and pass the navigation function hereotherwise i dont know how to manage to pass those along
                    items: [
                      DropDownItem(
                          text: "First",
                          icon: Icons.home,
                          sideBarNavigation: navigatePage),
                      DropDownItem(
                        text: "Second",
                        icon: Icons.security,
                        sideBarNavigation: navigatePage,
                      ),
                      DropDownItem(
                        text: "Third",
                        icon: Icons.security,
                        sideBarNavigation: navigatePage,
                      ),
                      DropDownItem(
                        text: "Fourth",
                        icon: Icons.security,
                        sideBarNavigation: navigatePage,
                      ),
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

  void navigatePage(String name) {
    switch (name) {
      case "Home":
        onIconPressed();
        BlocProvider.of<NavigationBloc>(context)
            .add(NavigationEvent.HomePageClickEvent);
        break;
      case "First":
        onIconPressed();
        BlocProvider.of<NavigationBloc>(context)
            .add(NavigationEvent.FirstPageClickEvent);
        break;
      case "Second":
        onIconPressed();
        BlocProvider.of<NavigationBloc>(context)
            .add(NavigationEvent.SecondPageClickEvent);
        break;
      case "Third":
        onIconPressed();
        BlocProvider.of<NavigationBloc>(context)
            .add(NavigationEvent.ThirdPageClickEvent);
        break;
      case "Fourth":
        onIconPressed();
        BlocProvider.of<NavigationBloc>(context)
            .add(NavigationEvent.FourthPageClickEvent);
        break;
    }
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
