import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';

@injectable
class HomePage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("HomePage",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),),
    );
  }
}
