import 'package:flutter/material.dart';

import '../widgets/audio_items.dart';
import '../models/audio.dart';

// This page relates to when you click on a category and see the different audio within that category
// Although there is only one present

class CategoryAudioScreen extends StatefulWidget {
  static const routeName = '/category-audio';

  final List<Audio> availableAudio;

  CategoryAudioScreen(this.availableAudio);

  @override
  _CategoryAudioScreenState createState() => _CategoryAudioScreenState();
}

class _CategoryAudioScreenState extends State<CategoryAudioScreen> {
  String categoryTitle;
  List<Audio> displayedAudio;
  var _loadedInitData = false;

  @override
  void initState() {
    // ...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
      ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedAudio = widget.availableAudio.where((audio) {
        return audio.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeAudio(String audioId) {
    setState(() {
      displayedAudio.removeWhere((audio) => audio.id == audioId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return AudioItem(
            id: displayedAudio[index].id,
            title: displayedAudio[index].title,
            imageUrl: displayedAudio[index].imageUrl,
            duration: displayedAudio[index].duration,
            complexity: displayedAudio[index].complexity,
          );
        },
        itemCount: displayedAudio.length,
      ),
    );
  }
}
