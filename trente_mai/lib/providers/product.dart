import 'package:flutter/material.dart';

@immutable
class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final bool isFovorite;

  const Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.isFovorite = false});


  Product copyWith( {String productTitle,
      String productDescn,
      double prix,
      String imagUrl,
      bool favori}) {

    return Product(
        id: id,
        title: productTitle ?? title,
        description: productDescn ?? description,
        price: prix ?? price,
        imageUrl: imagUrl ?? imageUrl,
        isFovorite: favori ?? isFovorite);
  }
}
