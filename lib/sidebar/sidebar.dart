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
                color: Color(0xFF262AAA),
                child: Column(children: <Widget>[
                  /*                  THIS IS WHERE THE SIDEBAR ITEMS GO                                  */
                  SideBarItem(
                    iconData: Icons.home,
                    title: "Homepage",
                    method: () {
                      navigateHomePage();
                    },
                  ),
                  SideBarItem(
                    iconData: Icons.home_repair_service_rounded,
                    title: "Second Page",
                    method: () {
                      navigateSecondPage();
                    },
                  ),
                  CustomDropDown(
                    key: _key,
                    // we need to initialise the DropDownItems here and pass them otherwise i dont know how to manage to pass the navigation functions
                    items: [
                      DropDownItem(
                          text: "Home",
                          icon: Icons.home,
                          sideBarNavigation: navigateHomePage),
                      DropDownItem(
                        text: "Second",
                        icon: Icons.security,
                        sideBarNavigation: navigateSecondPage,
                      ),
                      DropDownItem(
                        text: "Third",
                        icon: Icons.security,
                        sideBarNavigation: navigateThirdPage,
                      ),
                      DropDownItem(
                        text: "Fourth",
                        icon: Icons.security,
                        sideBarNavigation: navigateFourthPage,
                      ),
                    ],
                    string: "Roaccutane",
                  ),
                ]),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.9),
              child: GestureDetector(
                onTap: () {
                  _key.currentState.onButtonPressed();
                  onIconPressed();
                },
                child: ClipPath(
                  clipper: CustomMenuClipper(),
                  child: Container(
                    width: 35,
                    height: 110,
                    color: Color(0xFF262AAA),
                    alignment: Alignment.centerLeft,
                    child: AnimatedIcon(
                      progress: _animationController.view,
                      icon: AnimatedIcons.menu_close,
                      color: Color(0xFF1BB5FD),
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

  void navigateHomePage() {
    onIconPressed();
    BlocProvider.of<NavigationBloc>(context)
        .add(NavigationEvent.HomePageClickEvent);
  }

  void navigateSecondPage() {
    onIconPressed();
    BlocProvider.of<NavigationBloc>(context)
        .add(NavigationEvent.SecondPageClickEvent);
  }

  void navigateThirdPage() {
    onIconPressed();
    BlocProvider.of<NavigationBloc>(context)
        .add(NavigationEvent.ThirdPageClickEvent);
  }

  void navigateFourthPage() {
    onIconPressed();
    BlocProvider.of<NavigationBloc>(context)
        .add(NavigationEvent.FourthPageClickEvent);
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
