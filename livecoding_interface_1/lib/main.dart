import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
  
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Image.asset("images/cop.jpg"),

          SizedBox(height: 70,),

          Stack(
            children: [
              Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                   bottomRight: Radius.circular(20)
                ),
                image: DecorationImage(
                  image: AssetImage("images/cop.jpg"),
                  fit: BoxFit.cover
                  ),

              ),
            ),
            Positioned(
              bottom: 20,
              child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                 
                ),
                image: DecorationImage(
                  image: AssetImage("images/cop.jpg"),
                  fit: BoxFit.cover
                  ),

              ),
            ),
              )
            ],
          )
        ],
      ),
      
    );
  }
}