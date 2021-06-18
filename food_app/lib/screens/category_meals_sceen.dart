import 'package:flutter/material.dart';
import 'package:food_app/dummy_data.dart';
import 'package:food_app/widgets/meals_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String cathegoriId;

  // final String cathegorieTitle;

  // CategoryMealsScreen(
  //     this.cathegoriId, this.cathegorieTitle);

  @override
  Widget build(BuildContext context) {
    final argumenName =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final cathegorieTitle = argumenName["title"];
    final cathegoriId = argumenName["id"];
    final cathegoriMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(cathegoriId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(cathegorieTitle),
      ),
      body: ListView.builder(
         itemCount:  cathegoriMeals.length,
        itemBuilder: (context, index){
          return MeaiItem(
            title: cathegoriMeals[index].title,
            imageUrl: cathegoriMeals[index].imageUrl,
            duration: cathegoriMeals[index].duration,
            affordability: cathegoriMeals[index].affordability,
            complexity: cathegoriMeals[index].complexity,
          );
      })
    );
  }
}
