import 'package:flutter/material.dart';
import 'package:live_shop_appli/screen/favorite_screen.dart';
import 'package:live_shop_appli/screen/home_screen.dart';

class BottoNScreen extends StatefulWidget {
  @override
  _BottoNScreenState createState() => _BottoNScreenState();
}

class _BottoNScreenState extends State<BottoNScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [HomeScreen(), FavoriteScreen()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        height: 100,
        child: BottomAppBar(
            color: Colors.teal,
            child: Row(children: [
              Spacer(),
              Icon(Icons.home),
              Spacer(),
              Icon(Icons.home),
              Spacer(),
            ])),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 0.0,
      //   selectedLabelStyle: TextStyle(fontFamily: 'Montserrat', fontSize: 18.0),
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.black,
      //   backgroundColor: Color(0xff098457),
      //   onTap: onTabTapped,
      //   currentIndex: _currentIndex,
      //   items: [
      //     new BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
      //     new BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite), label: "Favoris"),
      //   ],
      // ),
    );
  }
}
