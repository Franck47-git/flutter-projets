import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trente_mai/providers/product.dart';


import 'package:trente_mai/providers/products.dart';

class ProductDetailScreen extends StatefulWidget {
  // final String title;

  //  ProductDetailScreen(this.title);

  static const routeName = '/detail-product';

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final provider = Provider.of<Products>(context, listen: false).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(provider.title),
      ),
      body: null
    );
  }
}
