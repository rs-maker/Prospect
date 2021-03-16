import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';

class OutroPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                  )),
              Expanded(
                flex: 2,
                child: BlocConsumer<CheckListCubit, CheckListState>(
                  builder: (buildContext, state) {
                    return Material(
                      color: Theme.of(context).backgroundColor,
                      child: Column(
                        children: [
                          Text("Vielen Dank", style: Theme.of(context).textTheme.headline1,),
                          Text(state.getFinal() ?
                              "Das ist das Ende der Checkliste.\n\n Sie haben die wichtigsten Punkte der Behandlung mit Roaccutane verstanden.\n\n" :
                              "Das ist das Ende der Checkliste.\n\n Sie haben einige Punkte offen gelassen,\n hier ist der code zum Wiederherstellen der checkliste.\n\n",
                              style: Theme.of(context).textTheme.bodyText1),
                          Padding(padding: const EdgeInsets.only(bottom: 10)),
                          Transform.scale(
                            scale: 3,
                            child: DecoratedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    state.getCode(),
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1),
                                  border: Border.all(
                                    width: 5,
                                    color: Colors.black38,
                                  ),
                                )),
                          ),
                          Padding(padding: const EdgeInsets.only(bottom: 100),),
                          FloatingActionButton(
                            heroTag: "bck",
                            onPressed: () {Navigator.of(context)
                                .pushNamed("/two");
                            },
                            child: Icon(Icons.arrow_back_rounded),
                          ),
                        ],
                      ),
                    );
                  },
                  listener: (b, s) {},
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
