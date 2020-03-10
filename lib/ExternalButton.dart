import 'package:flutter/material.dart';
class TestingWidget extends StatefulWidget {
  _TestingWidget createState() => _TestingWidget();
  }
class _TestingWidget extends State<TestingWidget>{
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'Clicky Clicky',
          onPressed: () { // should redirect here
            setState(() {
            });
          },
        ),
      ],
    );
  }
}