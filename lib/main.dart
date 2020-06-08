import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 24.0, fontFamily: "Lato", fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
              fontSize: 14.0, fontFamily: "Lato", color: Color(0XFFFFFFFF)),
          headline2: TextStyle(
              fontSize: 20.0, fontFamily: "Lato", color: Color(0XFF000000)),
          headline3: TextStyle(
              fontSize: 14.0, fontFamily: "Lato", color: Color(0XFF000000)),
          headline4: TextStyle(
              fontSize: 12.0, fontFamily: "Lato", color: Color(0XFF000000)),
          button: TextStyle(
              fontSize: 14.0, fontFamily: "Lato", fontWeight: FontWeight.bold),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

