import 'package:flutter/material.dart';
import 'package:weathers/screens/CurrentLocationScreen.dart';
import 'package:weathers/screens/FindLocationScreen.dart';
import 'package:weathers/screens/LoadingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff181740),
        accentColor: Color(0xff141a38),
        scaffoldBackgroundColor: Colors.orange,
        textTheme: TextTheme(body1: TextStyle(color: Color(0xfffffffff))),
      ),
      home: LoadingScreen(),
    );
  }
}
