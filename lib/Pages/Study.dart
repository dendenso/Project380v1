import 'package:flutter/material.dart';

class Study extends StatefulWidget {
  @override
  _Study createState() => _Study();
}

class _Study extends State<Study> {

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  var gradients = [
    LinearGradient(
      colors: [
        Colors.red,
        Colors.orange,
      ],
      stops: [
        0.3,
        0.7,
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.deepPurple,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Hero(
          child: Material(
            color: Colors.transparent,
            child: Text(
              "Study Time",
              style: TextStyle(
                color: Colors.greenAccent.shade200,
                fontSize: 22.0,
              ),
            ),
          ),
          tag: "title2",
          transitionOnUserGestures: true,
        ),
      ),

      body: PageView.builder(
        itemBuilder: (context, position) {
          return Stack(

          );
        },
        scrollDirection: Axis.vertical,
      ),
    );
  }
}