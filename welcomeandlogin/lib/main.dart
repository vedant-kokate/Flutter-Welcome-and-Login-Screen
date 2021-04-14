import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen 1',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/perosn.jpeg"),
                        fit: BoxFit.cover)),
              )),
          Expanded(
              child: Column(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "BAKING LESSONS",
                    style: Theme.of(context).textTheme.display1)
              ]))
            ],
          ))
        ],
      ),
    );
  }
}
