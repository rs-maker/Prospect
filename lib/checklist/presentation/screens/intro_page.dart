import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                        Text("Ich bin biologisch weiblich: "),
                        DropdownButton(
                          value: state.childbearing,
                          items: [
                            DropdownMenuItem(
                              child: Text("JA"),
                              value: true,
                            ),
                            DropdownMenuItem(
                              child: Text("NEIN"),
                              value: false,
                            ),
                          ],
                          onChanged: (v) {
                            state.assignGender(v);
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    SizedBox(
                      width: 100,
                      height: 30,
                      child: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                          labelText: "Code",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    ElevatedButton(
                        child: Text("Start"),
                        onPressed: () {
                          String code = textController.text;
                          if (code == "") {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Starte ohne Code")));
                            state.setCheckList("0");
                            Navigator.of(context).pushNamed("/one");
                          } else {
                            int intCode = int.tryParse(code, radix: 16);
                            if (intCode == null) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("Ungültiger Code!")));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text("Starte mit Code: \"" + code + "\"")));
                              state.setCheckList(code);
                              Navigator.of(context).pushNamed("/one");
                            }
                          }
                        }),
                  ],
                ),
              );
            },
            listener: (b, s) {},
          ),
          Expanded(child: Padding(padding: const EdgeInsets.only(top: 0))),
        ]),
      ),
    );
  }
}
