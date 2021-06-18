import 'package:flutter/material.dart';
import 'main.dart';

void main(List<String> args) {
  runApp(Screen2());
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app mobile",
      debugShowCheckedModeBanner: false,
      home: MyAppMobil(),
    );
  }
}

class MyAppMobil extends StatefulWidget {
  @override
  _MyAppMobilState createState() => _MyAppMobilState();
}

class _MyAppMobilState extends State<MyAppMobil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            }),
        backgroundColor: Colors.teal,
        title: Text("ACCUEIL"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BIENVENUE",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
