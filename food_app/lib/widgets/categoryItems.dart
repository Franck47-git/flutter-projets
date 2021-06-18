import 'package:flutter/material.dart';
import 'package:food_app/screens/category_meals_sceen.dart';

class CategoryItems extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItems(this.id, this.title, this.color);

  void selected(BuildContext cxt) {
    Navigator.of(cxt)
        .pushNamed("/catergories_meals", arguments: {"id": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selected(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.7),
              color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
