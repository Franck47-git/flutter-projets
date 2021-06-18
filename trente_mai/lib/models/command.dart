import 'package:flutter/material.dart';
import 'package:trente_mai/providers/product.dart';

@immutable
class Panier {
  final String id;
  final List<Product> products;
  final double priceTotal;
  const Panier(this.id, this.products, this.priceTotal);
}
