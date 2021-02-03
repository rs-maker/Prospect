import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/checklist_revisited/presentation/router/checklist_router.dart';

class MyChecklist extends StatefulWidget with NavigationStates{
  @override
  _MyChecklistState createState() => _MyChecklistState();
}

class _MyChecklistState extends State<MyChecklist> {
  final CheckListRouter _checkListRouter = CheckListRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHECKLIST',
      onGenerateRoute: _checkListRouter.onGenerateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
    );
  }
  @override
  void dispose() {
    _checkListRouter.dispose();
    super.dispose();
  }
}
