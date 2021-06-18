import 'package:flutter/material.dart';
import 'package:live_shop_appli/models/recette_models.dart';

class RecetteProvider with ChangeNotifier {
  List<Recette> _recette = [
    Recette(
      id: 'm7',
      title: 'Pancakes',
      couleur: Colors.orange,
      star: 3.5,
      calorie: 110,
      categoryId: [
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      ],
      image:
          'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      duree: 20,
      ingredients: [
        '1 1/2 Cups all-purpose Flour',
        '3 1/2 Teaspoons Baking Powder',
        '1 Teaspoon Salt',
        '1 Tablespoon White Sugar',
        '1 1/4 cups Milk',
        '1 Egg',
        '3 Tablespoons Butter, melted',
      ],
    ),
    Recette(
      id: 'm7',
      title: 'Pancakes',
      couleur: Colors.blueGrey,
      star: 3.5,
      calorie: 110,
      categoryId: [
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      ],
      image:
          'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      duree: 20,
      ingredients: [
        '1 1/2 Cups all-purpose Flour',
        '3 1/2 Teaspoons Baking Powder',
        '1 Teaspoon Salt',
        '1 Tablespoon White Sugar',
        '1 1/4 cups Milk',
        '1 Egg',
        '3 Tablespoons Butter, melted',
      ],
    ),
    Recette(
      id: 'm7',
      title: 'Pancakes',
      couleur: Colors.purpleAccent,
      star: 3.5,
      calorie: 110,
      categoryId: [
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      ],
      image:
          'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      duree: 20,
      ingredients: [
        '1 1/2 Cups all-purpose Flour',
        '3 1/2 Teaspoons Baking Powder',
        '1 Teaspoon Salt',
        '1 Tablespoon White Sugar',
        '1 1/4 cups Milk',
        '1 Egg',
        '3 Tablespoons Butter, melted',
      ],
    ),
  ];
}
