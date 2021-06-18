import 'package:flutter/material.dart';
import 'package:food_app/widgets/categoryItems.dart';
import 'package:food_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wold meals"),
        
      ),
      body: GridView(padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2),
        children:
            DUMMY_CATEGORIES.map((e) => CategoryItems(e.id , e.title,e.color)).toList(),
      ),
    );
  }
}
