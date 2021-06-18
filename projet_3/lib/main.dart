import 'package:flutter/material.dart';
import 'custumApp.dart';
import 'signIn.dart';
import 'insCrip.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application mobile",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String fullName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        
        preferredSize: Size.fromHeight(200),
        child: ClipPath(
          clipper: CustomAppBar(),
          child: Container(
            
            color: Colors.teal,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              child: Image.asset("assets/orange.jpeg"),
            ),
            Stack(
              //alignment: Alignment.center,
              children: [
                Text("Connexion",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 20,
                  ),
                  labelText: 'Nom',
                ),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                  });
                },
              ),
            ),
            Container(
              child: Text(
                fullName,
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 20,
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Mot de pass"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      size: 20,
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Email"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 340,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.teal,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen2()),
                    );
                  },
                  child: Text(
                    "Connexion",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 340,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Inscription()),
                    );
                  },
                  child: Text("Inscription",
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }
}
