import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';

class ThirdPage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Third Page",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),),
    );
  }
}