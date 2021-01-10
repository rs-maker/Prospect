import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prospect/ui/views/roaccutane/roaccutane_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RoaccutaneView extends StatelessWidget {
  const RoaccutaneView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      builder: (context, model, child) => Container(
        child: Text("LMAO"),
      ),
      viewModelBuilder: () => RoaccutaneViewModel(),
    );
  }
}
