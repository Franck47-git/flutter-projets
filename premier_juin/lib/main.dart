import 'package:flutter/material.dart';
import 'package:premier_juin/providers/food_provider.dart';
import 'package:premier_juin/providers/panier.dart';
import 'package:premier_juin/screen/detail_meal.dart';
import 'package:premier_juin/screen/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FoodProvider()),
        ChangeNotifierProvider(create: (_) => Panier()),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          
          primarySwatch: Colors.amber,
          ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePageScreen(),
         DetailMealScreen.routeName : (context) => DetailMealScreen(),
        },
      ),
    );
  }
}
