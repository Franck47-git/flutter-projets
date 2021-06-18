import 'package:flutter/material.dart';
import 'package:living_coding_shopping/screens/Favoris_screen.dart';
import 'package:living_coding_shopping/screens/home_screen.dart';

class BottomScreen extends StatefulWidget {
  @override
  _BottomScreenState createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {

    int _currentIndex = 0;
  final List<Widget> _children = [

    HomeScreen(),
    FavorisScreen(),

  ];

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  _children[_currentIndex], 
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.green[900],
       onTap: onTabTapped, 
       currentIndex: _currentIndex,
       items: [
         new BottomNavigationBarItem(
           icon: Icon(Icons.home, color: Colors.white,),
           label: 'Discover',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.favorite, color: Colors.white,),
           label: 'Favoris',
         ),
         
       ],
     ),
      
    );
  }
}