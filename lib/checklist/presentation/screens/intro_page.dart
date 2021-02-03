import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Column(
        children: [
          Text("Please select whether you have the ability to bear children or not"),
          BlocConsumer<CheckListCubit, CheckListState>(
            builder: (buildContext, state){
            return ButtonBar(
              children: [
                RaisedButton(child: Text("Yes"), onPressed: () {
                  state.assignGender(true);
                  Navigator.of(context).pushNamed("/one");
                }),
                RaisedButton(child: Text("No"), onPressed: () {
                  state.assignGender(false);
                  Navigator.of(context).pushNamed("/one");})
              ],
            );}, listener: (b,s){},
          ),
        ],
      ),
    );
  }
}
