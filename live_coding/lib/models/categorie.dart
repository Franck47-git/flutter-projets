import 'package:flutter/material.dart';

class Categories {
  int id;
  String title;
  Color color;

  Categories({this.color, this.id, this.title});
}

List<Categories> Telephone = [
  Categories(id: 1, title: "Samsung", color: Colors.lightBlue[100]),
  Categories(id: 2, title: "itel", color: Colors.pink),
  Categories(id: 3, title: "huawei", color: Colors.purple),
  Categories(id: 4, title: "iphone", color: Colors.yellow),
  Categories(id: 5, title: "one plus", color: Colors.blueGrey),
  Categories(id: 6, title: "alcatel", color: Colors.red),
  Categories(id: 7, title: "blackBerry", color: Colors.green),
  Categories(id: 8, title: "Nokia", color: Colors.blue),
  Categories(id: 9, title: "phoneMark", color: Colors.lightGreen),
  Categories(id: 10, title: "schnei", color: Colors.grey),
];
