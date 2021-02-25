import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';
import 'package:prospect/checklist/presentation/screens/question_page.dart';

class BulletQuestions extends StatefulWidget {
  final String title;
  final List<String> questions;
  final QuestionPageState questionPageState;
  final int number;
  final CheckListState checkListState;

  const BulletQuestions(
      {Key key,
      this.checkListState,
      this.number,
      this.questionPageState,
      this.title,
      this.questions})
      : super(key: key);

  @override
  _BulletQuestionState createState() => _BulletQuestionState();
}

class _BulletQuestionState extends State<BulletQuestions> {
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
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(alignment: Alignment.centerLeft,child: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold),)),
                  ] + buildBullets(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.black38, width: 3)),
              child: Column(
                children: [
                  Text("I understand"),
                  Padding(padding: const EdgeInsets.all(3),),
                  Transform.scale(
                      scale: 2.0,
                      child: Checkbox(
                          value: widget.checkListState.checkmarks[widget.number],
                          onChanged: (value) {
                            setState(() {
                              widget.checkListState.flipCheckMark(widget.number);
                              //This line updates the state of the little bar on the right of the page that displays the little checkmarks
                              widget.questionPageState.setState(() {});
                            });
                          })),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  List<Widget> buildBullets(){
    List<Widget> ret = [];
    widget.questions.forEach((element) {
      ret.add(ListTile(
        contentPadding: const EdgeInsets.all(0),
        leading: MyBullet(),
        title: Text(element),
      ));
    });
    return ret;
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: Theme.of(context).dividerColor,
        shape: BoxShape.rectangle,
      ),
    );
  }
}
