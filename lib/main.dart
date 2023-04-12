import 'package:flutter/material.dart';
import 'package:vara_lagbe/view/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Color.fromARGB(255, 231, 247, 247),
          primaryColor: Color(0xFF811B83),
          textTheme: TextTheme(
              headline1: TextStyle(
                color: Color(0xFF100E34),
              ),
              bodyText1: TextStyle(color: Color(0xFF100E34).withOpacity(0.5)))),
      home: HomePage(),
    );
  }
}
