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
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Row(
          children: [
            Expanded(child: Text(widget.question)),
            Transform.scale(
                scale: 2.0,
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
    );
  }
}
