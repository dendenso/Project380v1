import 'package:flutter/material.dart';

import './audio_data.dart';
import './screens/tabs_screen.dart';
import './screens/audio_detail_screen.dart';
import './screens/category_audio_screen.dart';
import './screens/filters_screen.dart';
import './screens/categories_screen.dart';
import './models/audio.dart';

// Filters are a work in progress code. Crashes app if currently used.

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'meditation': false,
    'study': false,
    'sleep': false,
    'workout': false,
  };

  List<Audio> _availableAudio = AUDIO_DATA;
  List<Audio> _favoriteAudio = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableAudio = AUDIO_DATA.where((audio) {
        if (_filters['meditation'] && !audio.isMeditate) {
          return false;
        }
        if (_filters['study'] && !audio.isStudy) {
          return false;
        }
        if (_filters['sleep'] && !audio.isSleep) {
          return false;
        }
        if (_filters['workout'] && !audio.isWorkout) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String audioId) {
    final existingIndex =
    _favoriteAudio.indexWhere((audio) => audio.id == audioId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteAudio.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteAudio.add(
          AUDIO_DATA.firstWhere((audio) => audio.id == audioId),
        );
      });
    }
  }

  bool _isAudioFavorite(String id) {
    return _favoriteAudio.any((audio) => audio.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliAudio',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.amberAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabsScreen(_favoriteAudio),
        CategoryAudioScreen.routeName: (ctx) =>
            CategoryAudioScreen(_availableAudio),
        AudioDetailScreen.routeName: (ctx) => AudioDetailScreen(_toggleFavorite, _isAudioFavorite),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _setFilters),
      },

      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if (settings.name == '/audio-detail') {
        //   return ...;
        // } else if (settings.name == '/something-else') {
        //   return ...;
        // }
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}