import 'package:flutter/material.dart';
import 'package:live_shop_appli/models/meal_models.dart';

class ProviderMeal with ChangeNotifier {
  List<Meal> _meals = [
    Meal(
      id: 'm1',
      categories: [
        'c1',
        'c2',
      ],
      title: 'Spaghetti with Tomato Sauce',
      couleur: Colors.blueAccent,
      like: 3.5,
      kcal: '140 g',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      duration: 20,
      ingredients: [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
        'Cheese (optional)'
      ],
    ),
    Meal(
      id: 'm2',
      categories: [
        'c2',
      ],
      title: 'Toast Hawaii',
      couleur: Colors.redAccent,
      like: 6.5,
      kcal: '140 g',
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      duration: 10,
      ingredients: [
        '1 Slice White Bread',
        '1 Slice Ham',
        '1 Slice Pineapple',
        '1-2 Slices of Cheese',
        'Butter'
      ],
    ),
    Meal(
      id: 'm3',
      categories: [
        'c2',
        'c3',
      ],
      title: 'Classic Hamburger',
      couleur: Colors.greenAccent,
      like: 7.5,
      kcal: '200 g',
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
      duration: 45,
      ingredients: [
        '300g Cattle Hack',
        '1 Tomato',
        '1 Cucumber',
        '1 Onion',
        'Ketchup',
        '2 Burger Buns'
      ],
    ),
    Meal(
      id: 'm4',
      categories: [
        'c4',
      ],
      title: 'Wiener Schnitzel',
      couleur: Colors.pinkAccent,
      like: 3.5,
      kcal: '130 g',
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
      duration: 60,
      ingredients: [
        '8 Veal Cutlets',
        '4 Eggs',
        '200g Bread Crumbs',
        '100g Flour',
        '300ml Butter',
        '100g Vegetable Oil',
        'Salt',
        'Lemon Slices'
      ],
    ),
    Meal(
      id: 'm5',
      categories: [
        'c2'
        'c5',
        'c10',
      ],
      title: 'Salad with Smoked Salmon',
      couleur: Colors.orangeAccent,
      like: 5,
      kcal: '180 g',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
      duration: 15,
      ingredients: [
        'Arugula',
        'Lamb\'s Lettuce',
        'Parsley',
        'Fennel',
        '200g Smoked Salmon',
        'Mustard',
        'Balsamic Vinegar',
        'Olive Oil',
        'Salt and Pepper'
      ],
    ),
    Meal(
      id: 'm6',
      categories: [
        'c6',
        'c10',
      ],
      title: 'Delicious Orange Mousse',
      couleur: Colors.yellowAccent,
      like: 9,
      kcal: '80 g',
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      duration: 240,
      ingredients: [
        '4 Sheets of Gelatine',
        '150ml Orange Juice',
        '80g Sugar',
        '300g Yoghurt',
        '200g Cream',
        'Orange Peel',
      ],
    ),
    Meal(
      id: 'm7',
      categories: [
        'c7',
      ],
      title: 'Pancakes',
      couleur: Colors.purpleAccent,
      like: 3.5,
      kcal: '110 g',
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      duration: 20,
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
    Meal(
      id: 'm8',
      categories: [
        'c8',
      ],
      title: 'Creamy Indian Chicken Curry',
      couleur: Colors.blueAccent,
      like: 4.5,
      kcal: '140 g',
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      duration: 35,
      ingredients: [
        '4 Chicken Breasts',
        '1 Onion',
        '2 Cloves of Garlic',
        '1 Piece of Ginger',
        '4 Tablespoons Almonds',
        '1 Teaspoon Cayenne Pepper',
        '500ml Coconut Milk',
      ],
    ),
    Meal(
      id: 'm9',
      categories: [
        'c9',
      ],
      title: 'Chocolate Souffle',
      couleur: Colors.cyan,
      like: 5,
      kcal: '140 g',
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      duration: 45,
      ingredients: [
        '1 Teaspoon melted Butter',
        '2 Tablespoons white Sugar',
        '2 Ounces 70% dark Chocolate, broken into pieces',
        '1 Tablespoon Butter',
        '1 Tablespoon all-purpose Flour',
        '4 1/3 tablespoons cold Milk',
        '1 Pinch Salt',
        '1 Pinch Cayenne Pepper',
        '1 Large Egg Yolk',
        '2 Large Egg Whites',
        '1 Pinch Cream of Tartar',
        '1 Tablespoon white Sugar',
      ],
    ),
    Meal(
      id: 'm10',
      categories: [
        'c2',
        'c5',
        'c10',
      ],
      title: 'Asparagus Salad with Cherry Tomatoes',
      couleur: Colors.blueAccent,
      like: 3.5,
      kcal: '140 g',
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
      duration: 30,
      ingredients: [
        'White and Green Asparagus',
        '30g Pine Nuts',
        '300g Cherry Tomatoes',
        'Salad',
        'Salt, Pepper and Olive Oil'
      ],
    ),
  ];
  List<Meal> get meal => [..._meals];

  List<Meal> _favoris = [];
  List<Meal> get favoris => [..._favoris];

  void addFavoris(favorisMeal) {
    final product = _meals.firstWhere((element) => element.id == favorisMeal, orElse: null);
    _favoris.contains(product) ? _favoris.remove(product) :  _favoris.add(product);
    notifyListeners();
    print(_favoris);
  }
}
