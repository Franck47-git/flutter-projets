import 'package:monday_trois_mai/model/model.dart';

List<Map> userList() {
  return [
    {
      "id": 1,
      "nom": "John Smith",
      "message": "Salut! comment tu vas",
      "images": "images/d1.jpg",
    },
    {
      "id": 2,
      "nom": "Mia Nguen",
      "message": "Super moi je vais hyper bien et vous",
      "images": "images/d2.jpg",
    },
    {
      "id": 3,
      "nom": "Henna beck",
      "message": "Moi je suis au sport en train de jouer au foot",
      "images": "images/d3.jpg",
    },
    {
      "id": 4,
      "nom": "Eric Blaise",
      "message": "quant à moi je fais mes exercices de maison",
      "images": "images/d4.jpg",
    },
    {
      "id": 5,
      "nom": "Angela Rios",
      "message": "Moi je suis à léglise",
      "images": "images/d5.jpg",
    },
    {
      "id": 6,
      "nom": "Franck",
      "message":
          "quant à moi je au bureau en train \n\n de terminer un boulot inachevé",
      "images": "images/d4.jpg",
    },
  ];
}

class ApiModelTester {
  List<UserModel> getUserModel({fake: false}) {
    if (fake) {
      return userList().map((e) => UserModel.fromJson(e)).toList();
    }
    return [];
  }
}

