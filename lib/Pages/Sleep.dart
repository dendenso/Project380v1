import 'package:flutter/material.dart';

class Sleep extends StatefulWidget {
  @override
  _Sleep createState() => _Sleep();
}

class _Sleep extends State<Sleep> {

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  var gradients = [
    LinearGradient(
      colors: [
        Colors.deepPurple,
        Colors.deepPurpleAccent,
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
              "Time to Sleep",
              style: TextStyle(
                color: Colors.greenAccent.shade200,
                fontSize: 22.0,
              ),
            ),
          ),
          tag: "title3",
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
