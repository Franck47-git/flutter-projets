import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListPage(),
    );
  }
}

class MyListPage extends StatefulWidget {
  @override
  _MyListPageState createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  List userResponse = [
    {
      "nom": "John smith",
      "message": "Salut les amis",
      "image": "images/d1.jpg"
    },
    {
      "nom": "Paul",
      "message": "Salut comment vous allez",
      "image": "images/d2.jpg"
    },
    {
      "nom": "Eric tya",
      "message": "Moi ça va et vous",
      "image": "images/d3.jpg"
    },
    {
      "nom": "Arielle Mapli",
      "message": "Moi je suis à l'église",
      "image": "images/d4.jpg"
    },
    {
      "nom": "Antou",
      "message": "Moi je suis au sport j'ai un match aujourd'hui",
      "image": "images/d5.jpg"
    },
    {
      "nom": "Melaine Pelagie",
      "message": "Moi je suis couchée un peu souffrante",
      "image": "images/w4.jpg"
    },
    {
      "nom": "Eric tya",
      "message": "Moi ça va et vous",
      "image": "images/d3.jpg"
    },
    {
      "nom": "Arielle Mapli",
      "message": "Moi je suis à l'église",
      "image": "images/d4.jpg"
    },
    {
      "nom": "Antou",
      "message": "Moi je suis au sport j'ai un match aujourd'hui",
      "image": "images/d5.jpg"
    },
    {
      "nom": "Melaine Pelagie",
      "message": "Moi je suis couchée un peu souffrante",
      "image": "images/w4.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(""),
          elevation: 0.0,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.person, color: Colors.grey,)
            ),
             BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.phone, color: Colors.grey,)
            ),
             BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.camera_alt, color: Colors.grey,)
            ),
             BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.message_outlined, color: Colors.orange,)
            ),
             BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.person_search, color: Colors.grey,)
            ),
          ],
          ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Chats",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold)),
                    Icon(Icons.edit_location_rounded),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 55,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200]),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Text("Search for chats & messages"),
                  ],
                ),
              ),
              ListView.builder(
                  itemCount: userResponse.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            ListTile(
                              // leading:  CircleAvatar(
                              //   backgroundImage: AssetImage("${userResponse[index]["image"]}"),
                              //   ),
                              leading: Container(
                                width: 50,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      left: 10,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "${userResponse[index]["image"]}"),
                                        radius: 25,
                                      ),
                                    ),
                                    Positioned(
                                      top: 30,
                                      left: 40,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 10,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              title: Text(
                                "${userResponse[index]["nom"]}",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              subtitle:
                                  Text("${userResponse[index]["message"]}"),
                              trailing: Icon(Icons.check),
                            ),
                          ],
                        )
                      ],
                    );
                  })
            ],
          ),
        ));
  }
}

// body: LayoutBuilder(
//   builder: (context, constraint) {
//     print("hauteur ${constraint.maxHeight}");
//     print("largeur ${constraint.maxWidth}");
//     print(orientation);
//     if (orientation == Orientation.landscape) {

//     return Center(
//       child: Container(
//         height: constraint.maxWidth * 0.3,
//         width: MediaQuery.of(context).size.width * 0.7,
//         color: Colors.deepPurple,

//       ),
//     );

//     }
//     else {

//     }

//     return Center(
//       child: Container(
//         height: constraint.maxWidth * 0.5,
//         width: MediaQuery.of(context).size.width * 0.7,
//         color: Colors.deepPurple,
//       ),
//     );
//   },
// ),
