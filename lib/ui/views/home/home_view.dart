import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

@injectable
class HomeView extends StatelessWidget {
  //HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Prospect Home",
              home: Scaffold(
                backgroundColor: Theme.of(context).backgroundColor,
                appBar: AppBar(
                  backgroundColor: Theme.of(context).accentColor,
                  title: Text(model.title),
                  actions: [],
                ),
                body: ListView(
                  children: [
                    /* 2 for now but might have to consider creating this dynamically for expansion*/
                    Column(
                      children: [
                        _buildListElement(
                            context,
                            Icons.add_circle_outline_rounded,
                            "Roaccutane",
                            model),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }

  //definitely not the best way to do this but it works
  Widget _buildListElement(context, IconData icon, String name, model) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'images/roche.png',
            width: 50,
            height: 50,
          ),
          Column(
            children: [
              Text(name),
            ],
          ),
          IconButton(
            color: Theme.of(context).buttonColor,
            icon: Icon(Icons.arrow_forward),
            onPressed: () {model.navigateToRoaccutane();},
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
