import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/checklist/checklist.dart';

class QuestionLayout extends StatefulWidget with NavigationStates {
  final LinkedHashMap<int, String> questions;
  final GlobalKey<CheckListState> checkListKey;
  final NavigationEvent forward;
  final NavigationEvent back;

  const QuestionLayout(
      {Key key, this.questions, this.checkListKey, this.forward, this.back})
      : super(key: key);

  @override
  _QuestionLayoutState createState() => _QuestionLayoutState();
}

class _QuestionLayoutState extends State<QuestionLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      padding: const EdgeInsets.all(50),
      child: ListView(
          children: _buildQuestions(context) +
              [
                Row(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: FloatingActionButton(
                        child: Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                        onPressed: () {
                          widget.back != null
                              ? BlocProvider.of<NavigationBloc>(context)
                                  .add(widget.back)
                              // ignore: unnecessary_statements
                              : () {};
                        },
                        backgroundColor: Theme.of(context).indicatorColor,
                      )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 0),
                  )),
                  Align(
                      alignment: Alignment.centerRight,
                      child: FloatingActionButton(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                        onPressed: () {
                          // ignore: unnecessary_statements
                          widget.forward != null
                              ? BlocProvider.of<NavigationBloc>(context)
                                  .add(widget.forward)
                              // ignore: unnecessary_statements
                              : () {};
                        },
                        backgroundColor: Theme.of(context).indicatorColor,
                      )),
                ]),
              ]),
    );
  }

  List<Widget> _buildQuestions(context) {
    List<Widget> ret = [];
    widget.questions.forEach((int number, String string) {
      ret.add(Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Row(
          children: [
            Expanded(child: Text(string)),
            Transform.scale(
                scale: 2.0,
                child: Checkbox(
                    value: widget.checkListKey.currentState
                            ?.getcheckMark(number) ??
                        false,
                    onChanged: (value) {
                      setState(() {
                        widget.checkListKey.currentState.flipcheckMark(number);
                        widget.checkListKey.currentState.setState(() {});
                      });
                    })),
          ],
        ),
      ));
      ret.add(Padding(padding: const EdgeInsets.only(bottom: 20)));
    });
    return ret;
  }
}
