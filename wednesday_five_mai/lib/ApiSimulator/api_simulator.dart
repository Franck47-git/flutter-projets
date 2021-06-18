import 'package:wednesday_five_mai/models/usermodel.dart';

List<Map> userList() {
  return [
    {
      "id": 1,
      "nom": "Soja",
      "prix": 2300,
      "image": "images/w1.jpg",
    },
    {
      "id": 2,
      "nom": "pomme",
      "prix": 4300,
      "image": "images/w2.jpg",
    },
    {
      "id": 3,
      "nom": "Riz",
      "prix": 2300,
      "image": "images/w3.jpg",
    },
    {
      "id": 4,
      "nom": "Chaussure",
      "prix": 2300,
      "image": "images/y2.jpg",
    },
      {
      "id": 5,
      "nom": "Takos",
      "prix": 1500,
      "image": "images/w3.jpg",
    },
    {
      "id": 4,
      "nom": "Bissap",
      "prix": 450,
      "image": "images/y2.jpg",
    },
  ];
}

class ApiSimulator {
  List<UserModel> getUserModel({bool fake: false}) {
    return userList().map((e) => UserModel.fromJson(e)).toList();
  }
}
