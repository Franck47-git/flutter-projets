
class UserModel {
  int id;
  String name;
  String image;
  int prix;

  UserModel({this.id, this.image, this.name, this.prix});

  UserModel.fromJson(Map map)
      :id = map["id"],
        name = map["nom"],
        image = map["image"],
        prix = map["prix"];
}
