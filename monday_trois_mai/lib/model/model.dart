class UserModel {
  int id;
  String name;
  String message;
  String image;

  UserModel({this.image, this.name,this.message});

  UserModel.fromJson(Map map)
      : name = map["nom"],
        id = map["id"],
        message = map["message"],
        image = map["images"];
}
