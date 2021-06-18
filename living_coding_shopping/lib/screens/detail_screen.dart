import 'package:flutter/material.dart';
import 'package:living_coding_shopping/providers/plats_providers.dart';
import 'package:provider/provider.dart';

class DetailscreenPage extends StatelessWidget {
  static const routeName = "/detail-page";
  @override
  Widget build(BuildContext context) {
    final dataID = ModalRoute.of(context).settings.arguments as String;
    final plat = Provider.of<PlatsProviders>(context).items;

    final platFound = plat.firstWhere((element) => element.id == dataID);

    final favorite = Provider.of<PlatsProviders>(context);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 60),
                  child: SizedBox(
                    height: 80,
                    child: ListView.builder(
                      itemCount: plat.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            Text("${platFound.name}",
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                            IconButton(
                                icon: Icon(
                                    favorite.favoris.contains(plat[index])
                                        ? Icons.favorite
                                        : Icons.favorite_border),
                                color: Colors.black,
                                onPressed: () {
                                  favorite.addFavorisItem(plat[index]);
                                  
                                })
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(platFound.imageUrl),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.schedule),
                        Text(" ${platFound.duree} min"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(platFound.icon),
                        Text(" ${platFound.palmares} rate"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.fire_hydrant),
                        Text(" ${platFound.kilo} Kcal"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
