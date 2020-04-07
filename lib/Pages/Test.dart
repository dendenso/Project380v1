import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testingmain/Pages/Meditate.dart';
import 'package:testingmain/Pages/Sleep.dart';
import 'package:testingmain/Pages/Study.dart';

void main(){
  runApp(MaterialApp(
    title: 'Navigating',
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Reflection",
          style: TextStyle(
            color: Colors.green,
            fontSize: 24.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),

      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                "Time to Start!",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),

            // Demonstrates the time
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              child: Text(
                DateTime.now().toIso8601String().substring(0, 10),
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),

            //Meditate
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Meditate",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Meditate(),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Hero(
                          tag: "title1",
                          transitionOnUserGestures: true,
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "Learn to Relax",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                height: 200.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.green,
                    ],
                    stops: [
                      0.3,
                      0.6,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),

            //Study
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Study",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Study(),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Hero(
                          tag: "title2",
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "Time to Study!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                height: 200.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.orange,
                    ],
                    stops: [
                      0.3,
                      0.6,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),

           //Sleep
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Sleep",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sleep(),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Hero(
                          tag: "title3",
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "Time to rest!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                height: 200.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepPurple,
                      Colors.purple,
                    ],
                    stops: [
                      0.3,
                      0.6,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}