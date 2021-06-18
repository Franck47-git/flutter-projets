import 'package:flutter/material.dart';
import 'package:live_shop_appli/models/product_models.dart';

class ProductsProviders with ChangeNotifier {
  List<Categorys> _items = [
    Categorys(id: 'c1', country: 'Italian', icon: Icons.restaurant),
    Categorys(id: 'c2', country: 'American', icon: Icons.umbrella),
    Categorys(id: 'c3', country: 'CI', icon: Icons.category),
    Categorys(id: 'c4', country: 'German', icon: Icons.leaderboard),
    Categorys(id: 'c5', country: 'American', icon: Icons.padding),
    Categorys(id: 'c6', country: 'Exotic', icon: Icons.track_changes),
    Categorys(id: 'c7', country: 'Spanish', icon: Icons.radio),
    Categorys(id: 'c8', country: 'Asian', icon: Icons.restaurant_menu),
    Categorys(id: 'c9', country: 'French', icon: Icons.dangerous),
    Categorys(id: 'c10', country: 'Mali', icon: Icons.format_size),
  ];

  List<Categorys> get items => [..._items];

  
}
