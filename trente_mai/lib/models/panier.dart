import 'package:flutter/material.dart';

@immutable
class Panier {
  final String id;
  final String title;
  final int quantity;
  const Panier({this.id, this.title, this.quantity,});
}

class PanierProvider with ChangeNotifier {
  Map<String, Panier> _items = {};
  Map<String, Panier> get item => {..._items};

  addInPanier(String title) {
    _items.putIfAbsent(
        DateTime.now().toString(),
        () => Panier(
            id: DateTime.now().toString(),
            title: title,
            quantity: 1));
    notifyListeners();
  }

  
}
