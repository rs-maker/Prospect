import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/pages/layouts/textblock_layout.dart';
import 'layouts/textpage_layout.dart';

class HomePage extends TextPage with NavigationStates {
  final List<Widget> children = [TextBlock(title: "TEST", content: "TEST", first: false,),TextBlock(title: "TEST", content: "TEST", first: false,)];
}
