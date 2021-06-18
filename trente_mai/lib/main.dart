import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trente_mai/models/panier.dart';

import 'package:trente_mai/providers/phones.dart';
import 'package:trente_mai/providers/product.dart';
import 'package:trente_mai/providers/products.dart';
import './screen/product_detailScreen.dart';
import './screen/products_overView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Products()),
        ChangeNotifierProvider(create: (context) => Phones()),
        ChangeNotifierProvider(create: (context) => PanierProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            backgroundColor: Colors.red,
            fontFamily: 'Anton',
            primaryColor: Colors.purple,
            accentColor: Colors.deepOrange),
        // home: ProductsOverViewScreen(),
        initialRoute: '/',
        routes: {
          '/': (ctx) => ProductsOverViewScreen(),
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
