import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist_revisited/logic/checklist_cubit.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title, this.color}) : super(key: key);

  final String title;
  final Color color;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the current State of the Checklist:',
            ),
            BlocConsumer<CheckListCubit, CheckListState>(
                builder: (context, state) {
                  return Container(
                    child: Row(
                      children: [
                        Text(state.checkmarks[0].toString() + "   :   "+ state.checkmarks[1].toString()),
                      ],
                    ),
                  );
                },
                listener: (context,state) {
                }),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: Text('${widget.title}'),
                  onPressed: () {
                    context.read<CheckListCubit>().flipCheckMark(0);
                    //BlocProvider.of<CounterCubit>(context).decrement();
                    // context.bloc<CounterCubit>().decrement();
                  },
                  tooltip: 'Flip 1',
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  heroTag: Text('${widget.title} 2nd'),
                  onPressed: () {
                    context.read<CheckListCubit>().flipCheckMark(1);
                  },
                  tooltip: 'Flip 2',
                  child: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            MaterialButton(
              color: Colors.redAccent,
              child: Text(
                'Go to Second Screen',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/second',
                );
              },
            ),
            SizedBox(
              height: 24,
            ),
            MaterialButton(
              color: Colors.greenAccent,
              child: Text(
                'Go to Question Screen',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/questionpage',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
