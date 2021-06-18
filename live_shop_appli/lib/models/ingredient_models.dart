enum Unity {
  g,
  L,
  Kg,
}

class Ingredients {
  final int id;
  final String titre;
  final String image;
  final double unityValue;
  Unity unite;
  Ingredients({this.id, this.titre, this.image, this.unite, this.unityValue});
}

void main(List<String> args) {
  var sauceTomage = Ingredients(
      id: 1, titre: "Tomato", image: "/png", unite: Unity.g, unityValue: 200.0);

 
}
