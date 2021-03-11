import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';

abstract class QuestionPage extends StatefulWidget {
  List<Widget> buildQuestions(
      CheckListState checkListState, QuestionPageState _questionPageState);

  String get titel;

  String get forward;

  String get back;

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
                    children: <Widget>[
                          Row(
                            children: [
                              Text(
                                widget.titel,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w300),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(0),
                              )),
                              Text(
                                "Code: ",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              DecoratedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      state.getCode(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 5,
                                      color: Colors.black38,
                                    ),
                                  )),
                            ],
                          )
                        ] +
                        widget.buildQuestions(state, this) +
                        [
                          Row(children: [
                            FloatingActionButton(
                              heroTag: "bck",
                              onPressed: () {
                                widget.back == null
                                    ? () {}
                                    : Navigator.of(context)
                                        .pushNamed(widget.back);
                              },
                              child: Icon(Icons.arrow_back_rounded),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(0),
                            )),
                            FloatingActionButton(
                              heroTag: "fwd",
                              onPressed: () {
                                widget.forward == null
                                    ? () {}
                                    : Navigator.of(context)
                                        .pushNamed(widget.forward);
                              },
                              child: Icon(Icons.arrow_forward_rounded),
                            )
                          ])
                        ],
                  ));
                },
                listener: (buildContext, state) {}),
            /* this creates the bar on the right containing the checkmarks
            * for additional checkmarks the constructor parameter of CheckListCubit in checklist_router  has to be adjusted*/
            BlocConsumer<CheckListCubit, CheckListState>(
                builder: (buildContext, state) {
                  if (state.childbearing) {
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
                        Checkbox(
                            value: state.checkmarks[10],
                            onChanged: (v) {
                              setState(() {
                                state.flipCheckMark(10);
                              });
                            }),
                        Checkbox(
                            value: state.checkmarks[11],
                            onChanged: (v) {
                              setState(() {
                                state.flipCheckMark(11);
                              });
                            }),
                        Checkbox(
                            value: state.checkmarks[12],
                            onChanged: (v) {
                              setState(() {
                                state.flipCheckMark(12);
                              });
                            }),
                        Expanded(child: Padding(padding: const EdgeInsets.only(top: 0),)),
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: state.getFinal() ? Colors.green : Colors.red, width: 3)),
                          child: Checkbox(
                              value: state.getFinal(),
                              onChanged: (v) {
                                setState(() {
                                });
                              }),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 70),)
                      ],
                    );
                  } else {
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
                            value: state.checkmarks[12],
                            onChanged: (v) {
                              setState(() {
                                state.flipCheckMark(12);
                              });
                            }),
                        Expanded(child: Padding(padding: const EdgeInsets.only(top: 0),)),
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: state.getFinal() ? Colors.green : Colors.red, width: 3)),
                          child: Checkbox(
                              value: state.getFinal(),
                              onChanged: (v) {
                                setState(() {
                                });
                              }),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 70),)
                      ],
                    );
                  }
                },
                listener: (buildContext, state) {})
          ],
        ),
      ),
    );
  }
}
