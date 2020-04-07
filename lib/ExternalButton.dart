import 'package:flutter/material.dart';
//import 'package:testingmain/ThemeofApp.dart';
void main(){
  runApp(MaterialApp(
    title: 'Navigating',
    home: Route1(),

  ));
}

class Route1 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
      ),
      home: Scaffold(
      appBar: AppBar(
        title: Text('Choice 1'),
      ),
      body:Center(
        child: FlatButton(
          child: Text('Choice 1'),
          onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) =>
              Route2()),
            );
            }
    ),
            ),
            ),
        );
  }
}
class Route2 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Route2"),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
    Navigator.pop(context);
    },
    child: Text('Return'),
        ),
  ),
      );
  }
}