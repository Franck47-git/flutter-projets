import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mon Application Mobile",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  Widget myResto(String image, Color color, String title, String resume) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  width: 380,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover),
                  ),
                )
              ],
            ),
    
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      child: Icon(
                        Icons.star,
                        color: color,
                        size: 25,
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      child: Icon(
                        Icons.star,
                        color: color,
                        size: 25,
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      child: Icon(
                        Icons.star,
                        color: color,
                        size: 25,
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      child: Icon(
                        Icons.star,
                        color: color,
                        size: 25,
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      child: Icon(
                        Icons.star_border,
                        color: color,
                        size: 25,
                      ),
                    ),
                    Container(
                      width: 200,
                      child: ExpansionTile(
                        title: Text(
                          title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        children: [Text(resume)],
                      ),
                    ),
                   
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Vos plats du jour"),
          backgroundColor: Colors.teal[900],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(10)),
              myResto(
                  "https://cdn.pixabay.com/photo/2016/11/23/18/31/close-up-1854245_1280.jpg",
                  Colors.orange,
                  "Bobolo",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel turpis vitae mauris tincidunt pellentesque non at odio. Phasellus faucibus posuere odio, eget mollis felis maximus nec. Donec nec ipsum "),
              myResto(
                  "https://cdn.pixabay.com/photo/2016/03/09/15/30/breakfast-1246686_1280.jpg",
                  Colors.orange,
                  "petit déujeuner",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel turpis vitae mauris tincidunt pellentesque non at odio. Phasellus faucibus posuere odio, eget mollis felis maximus nec. Donec nec ipsum ultricigravida lacus"),
              myResto(
                  "https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665_1280.jpg",
                  Colors.orange,
                  "Sonmon",
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel turpis vitae mauris tincidunt pellentesque non at odio. Phasellus "),
              myResto(
                  "https://cdn.pixabay.com/photo/2018/02/07/18/17/tortellini-3137649__480.jpg",
                  Colors.amber,
                  "Italianosop",
                  "Lorem ipsum dolor sit amet, consectetur ahttps://cdn.pixabay.com/photo/2018/02/07/18/17/tortellini-3137649_1280.jpgdipiscing elit. Sed vel turpis vitae mauris tincidunt pellentesque non at odio. Phasellus faucibus posuere odio, eget mollis felis maximus nec. Donec nec ipsum ultricies tortor convallis lobortis ut in eros. Integer eu mauris at nisi malesuada  lacus"),
            ],
          ),
        ));
  }
}
