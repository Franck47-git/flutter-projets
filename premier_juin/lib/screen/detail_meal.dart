import 'package:flutter/material.dart';
import 'package:premier_juin/providers/food_provider.dart';
import 'package:provider/provider.dart';

class DetailMealScreen extends StatelessWidget {
  static const routeName = "/detail_screen";
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as int;

    final foods = Provider.of<FoodProvider>(context).items;

    final foodDataMeall =
        foods.firstWhere((element) => element.id == productId);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(foodDataMeall.nom),
      ),
      body: Column(
        children: [
          Image.asset(foodDataMeall.imageUrl),
          SizedBox(height: 15),
          Card(
              margin: EdgeInsets.all(10),
              elevation: 10,
              child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  padding: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height / 4,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(foodDataMeall.nom,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      Text(
                        foodDataMeall.description,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "${foodDataMeall.prix.toString()} cFa",
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))),

        ],
      ),
    );
  }
}
