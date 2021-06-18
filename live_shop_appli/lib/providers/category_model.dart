import 'package:flutter/material.dart';
import 'package:live_shop_appli/models/category_models.dart';
import 'package:live_shop_appli/models/product_models.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> _category = [
    Category(id: 1, titre: 'Italian', icon: Icons.restaurant),
    Category(id: 2, titre: 'American', icon: Icons.umbrella),
    Category(id: 3, titre: 'CI', icon: Icons.category),
  ];

  List<Category> get category => [..._category];
}
