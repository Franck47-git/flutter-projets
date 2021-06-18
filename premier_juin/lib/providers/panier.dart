import 'package:flutter/material.dart';
import 'package:premier_juin/models/article_panier_model.dart';

class Panier with ChangeNotifier {
  Map<String, ArticlePanier> _panier = {};
  Map<String, ArticlePanier> get panier => {..._panier};

  void addArticleInPanier({int productId, String title, double price, String image}) {
    bool estQueTuExiste =  _panier.containsKey(productId); // retourne true or false

    if (estQueTuExiste) {
      _panier.update(productId.toString(),(value) => ArticlePanier(value.id, value.productId, value.price, value.title, value.img, value.quantity++));
    } else {
      _panier.putIfAbsent( productId.toString(),() => ArticlePanier(DateTime.now().minute, productId.toString(), price, title, image, 1));
    }
    notifyListeners();
    print(_panier.length);
    print(_panier);
  }
}
