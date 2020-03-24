

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Main Menu'),
        ),
    body: Center(
      child: FlatButton(
        onPressed: (){},
        child: Text('Button')

      ),
    ),
      )
      );
  }
}