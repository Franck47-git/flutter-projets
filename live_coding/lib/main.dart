import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_coding/screen.dart';
import 'package:live_coding/screens/categorie_screen.dart';
import 'package:live_coding/screens/mealsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: CategorieScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategorieScreen(),
        '/detail-categorie': (ctx) => MealsPage(),
      },
    );
  }
}
