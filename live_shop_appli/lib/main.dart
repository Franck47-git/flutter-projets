import 'package:flutter/material.dart';
import 'package:live_shop_appli/providers/category_model.dart';
import 'package:live_shop_appli/providers/providers_recette.dart';
import 'package:live_shop_appli/screen/bottom_screen.dart';
import 'package:live_shop_appli/screen/detail_screen.dart';
import './providers/providers_meal.dart';
import './providers/providers_product.dart';
import './screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductsProviders()),
        ChangeNotifierProvider(create: (context) => ProviderMeal()),
        ChangeNotifierProvider(create: (context) => CategoryProvider()),
        ChangeNotifierProvider(create: (context) => RecetteProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
       initialRoute: "/",
       routes: {
         "/" : (cxt) => BottoNScreen(),
         DetailScreen.routeName : (cxt) => DetailScreen(),
       },
      ),
    );
  }
}

