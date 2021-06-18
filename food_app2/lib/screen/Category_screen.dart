import 'package:flutter/material.dart';

import './category_meal_item.dart';
import '../dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meals"),
      ),
      body: GridView(
        padding: EdgeInsets.all(8),
        children: DUMMY_CATEGORIES
            .map(
              (cat) => CategoryItem(
                cat.id,
                cat.title,
                cat.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
