import 'package:flutter/material.dart';

class Recette {
  final String id;
  final String title;
  final double star;
  final Color couleur;
  final String image;
  final List categoryId;
  final double duree;
  final double unite;
  final double calorie;
  final List ingredients;

  Recette(
      {this.id,
      this.title,
      this.star,
      this.couleur,
      this.image,
      this.categoryId,
      this.duree,
      this.unite,
      this.calorie,
      this.ingredients});
}
