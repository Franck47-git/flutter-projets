import 'package:flutter/material.dart';
import 'package:food_app2/screen/list_repas.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  

  CategoryItem(this.id, this.title, this.color);
  @override
  Widget build(BuildContext context) {
    void selected(context) {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return Accueilready(
          title,
          id,
          
        );
      }));
    }

    return InkWell(
      onTap: () => selected(context),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(title),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            color.withOpacity(0.7),
            color,
          ], begin: Alignment.bottomLeft, end: Alignment.bottomRight),
        ),
      ),
    );
  }
}
