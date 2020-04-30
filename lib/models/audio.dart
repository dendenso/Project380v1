import 'package:flutter/foundation.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
enum Complexity {
  Short,
  Moderate,
  Long,
}

class Grouping {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> about;
  //final List<String> steps;
  final int duration;
  final Complexity complexity;
  final bool isMeditate;
  final bool isStudy;
  final bool isSleep;
  final bool isWorkout;

  const Grouping({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.about,
    //@required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.isMeditate,
    @required this.isStudy,
    @required this.isSleep,
    @required this.isWorkout,
  });
}
class Sound {
  final Audio audio;
  final String name;
  final String imageURL;

  const Sound({
    @required this.audio,
    @required this.name,
    @required this.imageURL,
  });
}