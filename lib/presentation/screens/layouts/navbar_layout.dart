import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/presentation/router/navigation_bloc.dart';

class NavBar extends StatelessWidget {
  final NavigationEvent back;
  final NavigationEvent forward;

  const NavBar({Key key, this.back, this.forward}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 20)),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(padding: const EdgeInsets.only(left: 7),),
              Align(
                alignment: Alignment.centerLeft,
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_back),
                  heroTag: "bck",
                  //color: back== null ? Theme.of(context).disabledColor : Theme.of(context).indicatorColor,
                  onPressed: () {
                    // ignore: unnecessary_statements
                    back == null ? (){} :
                    BlocProvider.of<NavigationBloc>(context)
                        .add(back);
                  },
                ),
              ),
              Expanded(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 80))),
              Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton( //FlatButton
                  heroTag: "fwd",
                  child: Icon(Icons.arrow_forward),
                  //color: forward == null ? Theme.of(context).disabledColor : Theme.of(context).indicatorColor,
                  onPressed: () {
                    // ignore: unnecessary_statements
                    forward == null ? (){} :
                    BlocProvider.of<NavigationBloc>(context)
                        .add(forward);
                  },
                ),
              ),
              Padding(padding: const EdgeInsets.only(right: 7),),
            ],
          ),
        ),
        Padding(padding: const EdgeInsets.only(bottom: 10),),
      ],
    );
  }
}
