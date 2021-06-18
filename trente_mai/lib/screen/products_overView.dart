

import 'package:flutter/material.dart';

import 'package:trente_mai/widget/products_grid.dart';

enum FilterOption { Favorites, All }

class ProductsOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final phones = Provider.of<Phones>(context).phone;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Shop",
        ),
        actions: [
          PopupMenuButton(
              onSelected: (FilterOption selectedValue) {
                if (selectedValue == FilterOption.Favorites) {
                } else {}
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text("Only Favorites"),
                      value: FilterOption.Favorites,
                    ),
                    PopupMenuItem(
                      child: Text("Show all"),
                      value: FilterOption.All,
                    ),
                  ])
        ],
      ),
      body: ProductsGrid(),
        
    );
  }
}
