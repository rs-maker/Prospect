import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Column(children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(top: 0),
        )),
        BlocConsumer<CheckListCubit, CheckListState>(
          builder: (buildContext, state) {
            return Material(
              color: Theme.of(context).backgroundColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I can bear children: "),
                      DropdownButton(
                        value: state.childbearing,
                        items: [
                          DropdownMenuItem(
                            child: Text("True"),
                            value: true,
                          ),
                          DropdownMenuItem(
                            child: Text("False"),
                            value: false,
                          ),
                        ],
                        onChanged: (v) {
                          state.assignGender(v);
                          setState(() {});
                        },
                      )
                    ],
                  ),
                ],
              ),
            );
          },
          listener: (b, s) {},
        ),
        ElevatedButton(
            child: Text("Start"),
            onPressed: () {
              Navigator.of(context).pushNamed("/one");
            }),
        Expanded(child: Padding(padding: const EdgeInsets.only(top: 0))),
      ]),
    );
  }
}
