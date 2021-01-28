import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';

class QuestionLayout extends StatelessWidget with NavigationStates {
  final List<String> questions;
  final Key checkListKey;
  const QuestionLayout({Key key, this.questions, this.checkListKey}) : super(key: key);

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
                        onPressed: () {},
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
                        onPressed: () {},
                        backgroundColor: Theme.of(context).indicatorColor,
                      )),
                ]),
              ]),
    );
  }

  List<Widget> _buildQuestions(context) {
    List<Widget> ret = [];
    questions.forEach((element) {
      ret.add(Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Row(
          children: [
            Expanded(child: Text(element)),
            Transform.scale(
                scale: 2.0,
                child: Checkbox(value: false, onChanged: (value) {})),
          ],
        ),
      ));
      ret.add(Padding(padding: const EdgeInsets.only(bottom: 20)));
    });
    return ret;
  }
}
