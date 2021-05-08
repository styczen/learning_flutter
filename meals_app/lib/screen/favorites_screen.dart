import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;

  FavoritesScreen(this.favoritesMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites now.'),
      );
    } else {
      return ListView.builder(
        itemCount: favoritesMeals.length,
        itemBuilder: (ctx, idx) {
          return MealItem(
            id: favoritesMeals[idx].id,
            title: favoritesMeals[idx].title,
            imageUrl: favoritesMeals[idx].imageUrl,
            affordability: favoritesMeals[idx].affordability,
            complexity: favoritesMeals[idx].complexity,
            duration: favoritesMeals[idx].duration,
          );
        },
      );
    }
  }
}
