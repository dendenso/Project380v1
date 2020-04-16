import 'package:flutter/material.dart';

import '../audio_data.dart';
import '../widgets/category_item.dart';

//This manipulates the color and dimensions of each square on the home screen or "Categories"

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: AUDIO_CATEGORIES
          .map(
            (catData) => CategoryItem(
          catData.id,
          catData.title,
          catData.color,
        ),
      )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
