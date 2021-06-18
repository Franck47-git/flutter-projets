import 'package:climat2/screens/city_screen.dart';
import 'package:climat2/screens/loading_screen.dart';
import 'package:climat2/screens/location_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
