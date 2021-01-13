import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';

class FirstPage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("SecondPage",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),),
    );
  }
}
