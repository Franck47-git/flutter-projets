import 'package:flutter/material.dart';
import 'package:living_coding_shopping/models/model_meal.dart';

class PlatsProviders with ChangeNotifier {
  List<Plats> _items = [
    Plats(
        id: "1",
        name: "Abofo",
        palmares: 9.0,
        color: Colors.orangeAccent,
        icon: Icons.restaurant,
        country: "Thaï",
        imageUrl: "images/abolofo.jpg",
        duree: 25,
        kilo: 238),
    Plats(
        id: "2",
        name: "Burger Fraise All",
        palmares: 4.5,
        color: Colors.green,
        icon: Icons.food_bank,
        country: "American",
        imageUrl: "images/burger.jpg",
        duree: 45,
        kilo: 208),
    Plats(
        id: "3",
        name: "Poulet au four",
        palmares: 3,
        color: Colors.purple,
        icon: Icons.category,
        country: "Cote d'ivoire",
        imageUrl: "images/poulet.jpg",
        duree: 15,
        kilo: 338),
    Plats(
        id: "4",
        name: "Crep freastre",
        palmares: 8.5,
        color: Colors.blue,
        icon: Icons.car_repair,
        country: "Portugais",
        imageUrl: "images/choukouya.jpg",
        duree: 25,
        kilo: 238),
    Plats(
        id: "5",
        name: "Chou pettefrize",
        palmares: 6,
        color: Colors.pink,
        icon: Icons.cached,
        country: "France",
        imageUrl: "images/joseph-gonzalez.jpg",
        duree: 15,
        kilo: 338),
    Plats(
        id: "6",
        name: "Choukouya",
        palmares: 3.5,
        color: Colors.black,
        icon: Icons.deck,
        country: "Mali",
        imageUrl: "images/emiliano-vittoriosi.jpg",
        duree: 15,
        kilo: 348),
    Plats(
        id: "7",
        name: "Fraxoe",
        palmares: 4.5,
        color: Colors.blue,
        icon: Icons.restaurant,
        country: "Mali",
        imageUrl: "images/hamburger.jpg",
        duree: 55,
        kilo: 260),
  ];

  List<Plats> get items => [..._items];
  List<Plats> _favoris = [];

  List<Plats> get favoris => [..._items];

  void addFavorisItem(Plats add) {
    var verify = _favoris.indexOf(add);

    if (verify >= 0) {
      _favoris.removeAt(verify);
      notifyListeners();
    } else {
      _favoris.add(add);
      notifyListeners();
    }
  }
}
