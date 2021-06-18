import 'dart:ui';

import 'package:flutter/material.dart';

class Plats {
  final String id;
  final String name;
  final double palmares;
  Color color;
  IconData icon;
  final String country;
  final String imageUrl;
  final double duree;
  final double kilo;

  Plats(
      {this.id,
      this.name,
      this.palmares,
      this.color,
      this.icon,
      this.country,
      this.imageUrl,
      this.duree, this.kilo, 
      });
}
