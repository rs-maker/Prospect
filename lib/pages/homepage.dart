import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';

class HomePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Padding(
        padding: const EdgeInsets.only(top: 48.0,left: 32.0,right: 32.0),
        child: Text("HomePage",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28),),
      )
    );
  }
}
