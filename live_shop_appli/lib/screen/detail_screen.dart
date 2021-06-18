import 'package:flutter/material.dart';
import 'package:live_shop_appli/providers/providers_meal.dart';
import 'package:live_shop_appli/styles/styliser.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = "/screen";
  @override
  Widget build(BuildContext context) {
    final idMeal = ModalRoute.of(context).settings.arguments as String;
    final providerMeal = Provider.of<ProviderMeal>(context);
    final meal =
        providerMeal.meal.firstWhere((element) => element.id == idMeal);

    final mensonge = Provider.of<ProviderMeal>(context).meal;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          meal.title,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Consumer<ProviderMeal>(builder: (context, meals, __) {
            //print(meals.favoris.contains(meal));
            return IconButton(
              icon: Icon(
                (meals.favoris.contains(meal))
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.black,
              ),
              onPressed: () {
                providerMeal.addFavoris(idMeal);
              },
            );
          })
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Image.network(meal.imageUrl),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.schedule),
                        Text("${meal.duration} min"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.amber,
                        ),
                        Text("${meal.like} rate"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.fireplace,
                        ),
                        Text("${meal.kcal} Kcal"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Ingredients", style: textTilename,),
              ],

              
            ),
          ),

          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mensonge.length,
              itemBuilder: (cxt, index) => Column(
                children: [
                  Container(
                    
                  )
                ],
              )),
          )
        ],
      ),
    );
  }
}
