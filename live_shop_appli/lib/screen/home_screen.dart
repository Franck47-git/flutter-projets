
import 'package:flutter/material.dart';
import 'package:live_shop_appli/screen/first_row.dart';
import 'package:live_shop_appli/screen/second_row.dart';
import 'package:live_shop_appli/styles/styliser.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff098457),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Search",
                  style: textTile,
                ),
                Text("for recipes")
              ],
            ),
          )),
          Expanded(
            child: FirstRowWidget(),
          ),
          Expanded(
              flex: 5,
              child: Container(child: SecondRowScreen())),
        ],
      ),
    );
  }
}
