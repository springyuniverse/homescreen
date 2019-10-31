import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xff3B4249)),
      home: MyHomePage(),
    );
  }
}
