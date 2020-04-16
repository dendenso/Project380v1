import 'package:flutter/material.dart';

import '../models/audio.dart';
import '../widgets/audio_items.dart';


// This page relates to the favorites screen. It shows what has been added as a favorite.
// No need to manipulate anything on this page.

class FavoritesScreen extends StatelessWidget {
  final List<Audio> favoriteAudio;

  FavoritesScreen(this.favoriteAudio);

  @override
  Widget build(BuildContext context) {
    if (favoriteAudio.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return AudioItem(
            id: favoriteAudio[index].id,
            title: favoriteAudio[index].title,
            imageUrl: favoriteAudio[index].imageUrl,
            duration: favoriteAudio[index].duration,
            complexity: favoriteAudio[index].complexity,
          );
        },
        itemCount: favoriteAudio.length,
      );
    }
  }
}
