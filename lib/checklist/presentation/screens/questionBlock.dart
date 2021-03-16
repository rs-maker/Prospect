import 'package:flutter/material.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';
import 'package:prospect/checklist/presentation/screens/question_page.dart';

class QuestionBlock extends StatefulWidget {
  final String question;
  final QuestionPageState questionPageState;
  final int number;
  final CheckListState checkListState;
  const QuestionBlock(
      {Key key, this.question, this.checkListState, this.number, this.questionPageState})
      : super(key: key);

  @override
  _QuestionBlockState createState() => _QuestionBlockState();
}

class _QuestionBlockState extends State<QuestionBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Text(widget.question),
            Padding(padding: const EdgeInsets.only(top: 10),),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.black38, width: 1)),
              child: Column(
                children: [
                  Text("Ich verstehe"),
                  Padding(padding: const EdgeInsets.all(3),),
                  Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          value: widget.checkListState.checkmarks[widget.number],
                          onChanged: (value) {
                            setState(() {
                              widget.checkListState.flipCheckMark(widget.number);
                              //This line updates the state of the little bar on the right of the page that displays the little checkmarks
                              widget.questionPageState.setState(() {
                              });
                            });
                          })),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
