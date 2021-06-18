import 'package:flutter/material.dart';

@immutable
class Phone {
  final int id;
  final String mark;
  final Color couleur;
  final double price;
  const Phone(this.couleur, this.id, this.mark, this.price);
}
