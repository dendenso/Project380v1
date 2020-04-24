import 'package:flutter/material.dart';

import '../audio_data.dart';
import 'package:wellnessapplication/timer/countdown.dart';

class AudioDetailScreen extends StatelessWidget {
  static const routeName = '/audio-detail';

  final Function toggleFavorite;
  final Function isFavorite;

  AudioDetailScreen(this.toggleFavorite, this.isFavorite);

  //This manipulates the space on the final screen between picture, about title, and about section
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  //This manipulates the color and dimensions of the about box
  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

//This manipulates the dimensions of the photo for the final screen
  @override
  Widget build(BuildContext context) {
    final audioId = ModalRoute.of(context).settings.arguments as String;
    final selectedAudio = AUDIO_DATA.firstWhere((audio) => audio.id == audioId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedAudio.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedAudio.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'About'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedAudio.about[index])),
                ),
                itemCount: selectedAudio.about.length,
              ),
            ),

            //CountDown
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Countdown(),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Hero(
                          tag: "title1",
                          transitionOnUserGestures: true,
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "Timer",
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
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.teal,
                      Colors.teal,
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



// Uncommenting this, among the other commented out pieces in different files of the
// code will add a "steps" section

//            buildSectionTitle(context, 'Steps'),
//            buildContainer(
//              ListView.builder(
//                itemBuilder: (ctx, index) => Column(
//                  children: [
//                    ListTile(
//                      leading: CircleAvatar(
//                        child: Text('# ${(index + 1)}'),
//                      ),
//                      title: Text(
//                        selectedAudio.steps[index],
//                      ),
//                    ),
//                    Divider()
//                  ],
//                ),
//                itemCount: selectedAudio.steps.length,
//              ),
//            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(audioId) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => toggleFavorite(audioId),
      ),
    );
  }
}
