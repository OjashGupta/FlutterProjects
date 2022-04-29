// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './text_control.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("AppBar"),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 248, 49, 126),
        ),
        body: TextControl(),
      ),
    );
  }
}
