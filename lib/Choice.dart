import 'package:flutter/material.dart';

class TextAndIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text and Icon Button'),
      ),
      body: Center(
        child: FlatButton.icon(
          color: Colors.green,
          icon: Icon(Icons.face), //`Icon` to display
          label: Text('Enter app'), //prompt user to press
          // on pressed opens new windows
          onPressed: () {
            //Code to execute when Floating Action Button is clicked
            //...
          },
        ),
      ),
    );
  }
}