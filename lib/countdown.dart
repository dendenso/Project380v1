import 'dart:async';
import 'dart:math' as math;
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import './models/audio.dart';
class Countdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CountDownTimer(),
      debugShowCheckedModeBanner: false,
      title: "Timer",
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        accentColor: Colors.teal,
      ),
    );
  }
}

class CountDownTimer extends StatefulWidget {
  @override
  final music = <Sound>[
    Sound(
      name: "Test",
      audio: Audio("/AudioTesting/test.mp3"),
      /*metas: Metas(
        title: "Bandaids",
        artist: "Keshi",
        album: "bandaids",
        image: MetasImage.file("/AudioTesting/testmetaimage.png"),
  ),
      ),*/
    )];
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> with TickerProviderStateMixin {
  AnimationController controller;

  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  // ignore: non_constant_identifier_names
  final AssetsAudioPlayer MusicPlayer = AssetsAudioPlayer();
  final List<StreamSubscription> _subscriptions =[];
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(minutes: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    MusicPlayer.open(Audio("AudioTesting/test.mp3"));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meditation Timer"
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Stack(

              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.center,
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: CustomPaint(
                                      painter: CustomTimerPainter(
                                        animation: controller,
                                        backgroundColor: Colors.white,
                                        color: themeData.indicatorColor,
                                      )),
                                ),
                                Align(
                                  alignment: FractionalOffset.center,
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: <Widget>[
//                                      Text(
//                                        "Count Down Timer",
//                                        style: TextStyle(
//                                            fontSize: 20.0,
//                                            color: Colors.white),
//                                      ),
                                      Text(
                                        timerString,
                                        style: TextStyle(
                                            fontSize: 112.0,
                                            color: Colors.amber)
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      AnimatedBuilder(
                          animation: controller,
                          builder: (context, child) {
                            return FloatingActionButton.extended(
                                onPressed: () {
                                  if (controller.isAnimating)
                                    controller.stop();
                                  else {
                                    controller.reverse(
                                        from: controller.value == 0.0
                                            ? 1.0
                                            : controller.value);
                                  }
                                },
                                icon: Icon(controller.isAnimating
                                    ? Icons.pause
                                    : Icons.play_arrow),
                                label: Text(
                                    controller.isAnimating ? "Pause" : "Play"));
                          }),

                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class CustomTimerPainter extends CustomPainter {
CustomTimerPainter({
    this.animation,
    this.backgroundColor,
    this.color,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor, color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = color;
    double progress = (1.0 - animation.value) * 2 * math.pi;
    canvas.drawArc(Offset.zero & size, math.pi * 1.5, -progress, false, paint);
  }

  @override
  bool shouldRepaint(CustomTimerPainter old) {
    return animation.value != old.animation.value ||
        color != old.color ||
        backgroundColor != old.backgroundColor;
  }
}