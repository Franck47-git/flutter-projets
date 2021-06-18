import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "user profil",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class Screen2 extends StatelessWidget {
  String prix = "1, 342";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(
            Icons.bookmark_rounded,
            color: Colors.grey,
          ),
        ],
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 350,
            height: 250,
            decoration: BoxDecoration(
                //color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(image: AssetImage("images/1.png"))),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 110),
            child: Container(
              child: Text("Duplex Apartement",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 120, left: 28),
                  child: Text(
                    "Abidjan, Cocody",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),

                //SizedBox(width: 50,),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text("4.8(256 Reviews)"),
              ],
            ),
          ),
          SizedBox(
            height: 20, 
          ),
          Padding(
            padding: const EdgeInsets.only(right: 270),
            child: Text(" $prix/ mo",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple)),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Text("Description:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 15),
            child: Text(
                "Je suis encore à l'école fer grte bgtulgdder hyytuyiufddeza greaxcfjkv ccfvvhb der derv szaex loytr ils sont venus de nul part",
                style: TextStyle(fontSize: 18)),
          )
        ],
      ),
    );
  }
}

// ==================== HomePage()
class HomePage extends StatelessWidget {
  void back() {
    print("Boutton de retour");
  }

  void back2() {
    print("Boutton de retour");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
           padding: EdgeInsets.only(right: 5, bottom: 15, top: 15),
          child: Text(
            "123 Main St",
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: false,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15, bottom: 15, top: 15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.black)),
                ),
                onPressed: back,
                child: Text(
                  "Edit address",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            
            child: Image.asset("images/2.png"),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "We'll share a few curared listings and your estimated listing price",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 300,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: Colors.blue,
              ),
              child: Text(
                "Let's go",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onPressed: back2,
            ),
          )
        ],
      ),
    );
  }
}

// ============ APP USERS PROFIL =========================>//



class profilPage extends StatelessWidget {
  String pseudo = "Kouman Boby";
  // ignore: non_constant_identifier_names
  String pseudo_name = 'Alpha';
  String city = "Abidjan Yop";
  var profil = 'Profil';

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Container 1
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(150),
                image: DecorationImage(
                  image: AssetImage("assets/images.png"),
                  fit: BoxFit.cover,
                )),
          ),

          Text(
            "$profil",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
              height: 5,
              color: Colors.blueGrey[600],
              width: 350,
              child: Divider(
                color: Colors.blueGrey[600],
              )),
          // Container 2
          Container(
            child: Center(
              child: Column(
                children: [
                  Row(
                    // ligne 1
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Icon(
                          Icons.person,
                          size: 25,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Pseudo : $pseudo",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 23,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    //ligne 2
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Icon(Icons.admin_panel_settings,
                            size: 25, color: Colors.blueGrey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Pseudo: $pseudo_name",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 23,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    //ligne 3
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Icon(
                          Icons.home,
                          size: 25,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("City : $city",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 23,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    //ligne 4
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Icon(
                          Icons.phone,
                          size: 25,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Contact : 08 435 786 980",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 23,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 250,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
              onPressed: () {
                print("---Validation ok -----");
              },
              child: Text(
                "Retour",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
