import 'package:flutter/material.dart';
import 'package:livecoding_dribbble/dribblroute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dribbble(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[200]),
    );
  }
}


