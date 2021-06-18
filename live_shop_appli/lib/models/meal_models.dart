import 'package:flutter/material.dart';

class Meal {
  final String id;
  final String title;
  List<String> categories;
  final String imageUrl;
  final List<String> ingredients;
  final int duration;
  Color couleur;
  final double like;
  final String kcal;

  Meal(
      {this.id,
      this.title,
      this.categories,
      this.imageUrl,
      this.ingredients,
      this.duration,
      this.couleur,
      this.like,
      this.kcal});
}
