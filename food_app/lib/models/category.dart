import 'package:flutter/material.dart';

class Category {
  final String id;
  final Color color;
  final String title;

 const Category(
      {this.color = Colors.orange, @required this.id, @required this.title});
}
