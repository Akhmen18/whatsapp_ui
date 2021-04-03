import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screen/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatApp',
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        accentColor: Color(0xff25d366),
        tabBarTheme: TabBarTheme(labelColor: Colors.white),
        textTheme: TextTheme(
          //title
          headline6: TextStyle(color: Colors.white, fontSize: 16.0),
          bodyText2: TextStyle(color: Colors.black),
          button: TextStyle(color: Colors.white),
        ),
        bottomAppBarColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
