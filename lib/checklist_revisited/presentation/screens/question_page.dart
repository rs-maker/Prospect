import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist_revisited/logic/checklist_cubit.dart';

abstract class QuestionPage extends StatefulWidget {
  List<Widget> buildQuestions(CheckListState checkListState, QuestionPageState _questionPageState);
  @override
  QuestionPageState createState() => QuestionPageState();
}

class QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Theme.of(context).backgroundColor,
        child: Row(
          children: [
            BlocConsumer<CheckListCubit, CheckListState>(
                builder: (buildContext, state) {
                  return Expanded(
                      child: ListView(
                    children: widget.buildQuestions(state, this),
                  ));
                },
                listener: (buildContext, state) {}),
            /* this creates the bar on the right containing the checkmarks
            * for additional checkmarks the constructor parameter of CheckListCubit in checklist_router  has to be adjusted*/
            BlocConsumer<CheckListCubit, CheckListState>(
                builder: (buildContext, state) {
                  return Column(
                    children: [
                      Checkbox(
                          value: state.checkmarks[0],
                          onChanged: (v) {
                            setState(() {
                              state.flipCheckMark(0);
                            });
                          }),
                      Checkbox(
                          value: state.checkmarks[1],
                          onChanged: (v) {
                            setState(() {
                              state.flipCheckMark(1);
                            });
                          }),
                      Checkbox(
                          value: state.checkmarks[2],
                          onChanged: (v) {
                            setState(() {
                              state.flipCheckMark(2);
                            });
                          }),
                      Checkbox(
                          value: state.checkmarks[3],
                          onChanged: (v) {
                            setState(() {
                              state.flipCheckMark(3);
                            });
                          }),
                      Checkbox(
                          value: state.checkmarks[4],
                          onChanged: (v) {
                            setState(() {
                              state.flipCheckMark(4);
                            });
                          }),
                      Checkbox(
                          value: state.checkmarks[5],
                          onChanged: (v) {
                            setState(() {
                              state.flipCheckMark(5);
                            });
                          }),
                      Checkbox(
                          value: state.checkmarks[6],
                          onChanged: (v) {
                            setState(() {
                              state.flipCheckMark(6);
                            });
                          }),
                      Checkbox(
                          value: state.checkmarks[7],
                          onChanged: (v) {
                            setState(() {
                              state.flipCheckMark(7);
                            });
                          }),
                      Checkbox(
                          value: state.checkmarks[8],
                          onChanged: (v) {
                            setState(() {
                              state.flipCheckMark(8);
                            });
                          }),
                      Checkbox(
                          value: state.checkmarks[9],
                          onChanged: (v) {
                            setState(() {
                              state.flipCheckMark(9);
                            });
                          }),
                    ],
                  );
                },
                listener: (buildContext, state) {})
          ],
        ),
      ),
    );
  }
}