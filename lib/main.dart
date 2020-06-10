import 'package:flutter/material.dart';

import 'Pages/Login.dart';

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
        buttonColor: Color(0XFF2E7D32),
        primarySwatch: Colors.teal,
        cursorColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 24.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              color: Color(0XFFFFFFFF)),
          bodyText1: TextStyle(
              fontSize: 18.0, fontFamily: "Lato", color: Color(0XFFFFFFFF)),
          headline2: TextStyle(
              fontSize: 20.0, fontFamily: "Lato", color: Color(0XFF000000)),
          headline3: TextStyle(
              fontSize: 14.0, fontFamily: "Lato", color: Color(0XFF000000)),
          headline4: TextStyle(
              fontSize: 12.0, fontFamily: "Lato", color: Color(0XFF000000)),
          button: TextStyle(
              fontSize: 14.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              color: Color(0XFFFFFFFF)),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}
