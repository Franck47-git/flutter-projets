import 'package:flutter/material.dart';
import 'package:premier_juin/providers/food_provider.dart';
import 'package:premier_juin/providers/panier.dart';
import 'package:premier_juin/screen/detail_meal.dart';
import 'package:provider/provider.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final pop = ["Favoris", "Produit"];

  bool showProduct = true;

  @override
  Widget build(BuildContext context) {
    final foodData = Provider.of<FoodProvider>(context);
    final panier = Provider.of<Panier>(context);
    final usuyr = foodData.items;
    final favs = foodData.favoris;

    return Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              panier.panier.length.toString(),
              style: TextStyle(fontSize: 23),
            ),
          ),
          actions: [
            PopupMenuButton(
                onSelected: (data) {
                  setState(() {
                    if (data == "Produit") {
                      showProduct = true;
                    } else {
                      showProduct = false;
                    }
                  });
                },
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) {
                  return pop
                      .map((data) =>
                          PopupMenuItem(value: data, child: Text(data)))
                      .toList();
                })
          ],
        ),
        body: (showProduct)
            ? GridView.builder(
                padding: EdgeInsets.all(5),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: usuyr.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, DetailMealScreen.routeName,
                          arguments: usuyr[index].id);
                    },
                    child: GridTile(
                      child: Image.asset(usuyr[index].imageUrl),
                      footer: GridTileBar(
                        backgroundColor: Colors.black87,
                        leading: IconButton(
                            icon: Icon(foodData.favoris.contains(usuyr[index])
                                ? Icons.favorite
                                : Icons.favorite_border),
                            onPressed: () =>
                                foodData.addRemoveFavoris(usuyr[index])),
                        title: Text(
                          usuyr[index].nom,
                          textAlign: TextAlign.center,
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.shopping_cart),
                          onPressed: () {
                            panier.addArticleInPanier(
                                productId: usuyr[index].id,
                                price: usuyr[index].prix,
                                title: usuyr[index].nom,
                                image: usuyr[index].imageUrl);
                          },
                        ),
                      ),
                    ),
                  );
                })
            : GridView.builder(
                padding: EdgeInsets.all(5),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: favs.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, DetailMealScreen.routeName,
                          arguments: favs[index].id);
                    },
                    child: GridTile(
                      child: Image.asset(favs[index].imageUrl),
                      footer: GridTileBar(
                        backgroundColor: Colors.black87,
                        leading: IconButton(
                            icon: Icon(foodData.favoris.contains(usuyr[index])
                                ? Icons.favorite
                                : Icons.favorite_border),
                            onPressed: () =>
                                foodData.addRemoveFavoris(usuyr[index])),
                        title: Text(
                          usuyr[index].nom,
                          textAlign: TextAlign.center,
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.shopping_cart),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  );
                }));
  }
}
