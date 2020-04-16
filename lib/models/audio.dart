import 'package:flutter/foundation.dart';

enum Complexity {
  Short,
  Moderate,
  Long,
}

class Audio {
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

  const Audio({
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
