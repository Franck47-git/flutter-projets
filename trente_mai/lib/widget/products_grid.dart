import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trente_mai/providers/products.dart';
import 'package:trente_mai/widget/product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final productsData = Provider.of<Products>(context);
    final products = productsData.item;

    return GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 10),
        itemCount: products.length,
        itemBuilder: (context, i) => ProductItems(
              products[i].id,
              products[i].title,
              products[i].imageUrl,
            ));
  }
}
