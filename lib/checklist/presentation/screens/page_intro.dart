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
      body: ListView(
        padding: const EdgeInsets.all(32),
        children: [
          Text(
            "Checkliste",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
              "Um sicher zu gehen dass sie die für sie wichtigsten Punkte aufgenommen haben, können sie diese Checkliste durchgehen. \n\n"
              "Da Roaccutane für die Geschlechter unterschiedliche Risiken birgt ist es wichtig, dass sie ihr biologisches Geschlecht angeben.\n\n"
              "Wenn sie mit einem Punkt nicht einverstanden sind oder Fragen dazu haben lassen sie ihn einfach aus. Sie können später mit ihrem Arzt offene Fragen klären. \n\n"
              "Wenn sie Checkliste schon einmal durchgegangen sind können sie mit ihrem Code den Zustand wieder herstellen.\n\n",
              style: Theme.of(context).textTheme.bodyText1),
          BlocConsumer<CheckListCubit, CheckListState>(
            builder: (buildContext, state) {
              return Material(
                color: Theme.of(context).backgroundColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ich bin biologisch weiblich: \t",
                          style: TextStyle(fontFamily: "RobotoMedium", fontSize: 18),
                        ),
                        DropdownButton(
                          value: state.childbearing,
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                "JA",
                                style: TextStyle(fontFamily: "RobotoMedium", fontSize: 18),
                              ),
                              value: true,
                            ),
                            DropdownMenuItem(
                              child: Text("NEIN",
                                  style: TextStyle(fontFamily: "RobotoMedium", fontSize: 18)),
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
                      width: 200,
                      height: 50,
                      child: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                          labelText: "Code",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    ElevatedButton(
                        child: Text("Start",
                            style: Theme.of(context).textTheme.bodyText1),
                        onPressed: () {
                          String code = textController.text;
                          if (code == "") {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Starte ohne Code")));
                            state.setCheckList("0");
                            Navigator.of(context).pushNamed("/one");
                          } else {
                            int intCode = int.tryParse(code, radix: 16);
                            if (intCode == null || intCode > 0x1fff) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Ungültiger Code!")));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("Starte mit Code: \"" +
                                          code +
                                          "\"")));
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
        ]),
    );
  }
}
