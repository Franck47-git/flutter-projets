import 'package:flutter/material.dart';
import 'custumApp.dart';
import 'signIn.dart';
import 'main.dart';

void main(List<String> args) {
  runApp(Inscription());
}

class Inscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inscris(),
    );
  }
}

class Inscris extends StatefulWidget {
  @override
  _InscrisState createState() => _InscrisState();
}

class _InscrisState extends State<Inscris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: ClipPath(
          clipper: CustomAppBar(),
          child: Container(
            child: AppBar(
              backgroundColor: Colors.teal,
              leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            }),
            ),
            
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
                Text("Inscription",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 18)),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(
              height: 15,
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
            SizedBox(
              height: 15,
            ),
             Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.home,
                      size: 20,
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Ville"),
              ),
            ),
            SizedBox(
              height: 15,
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
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      size: 20,
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Télephone"),
              ),
            ),
            SizedBox(
              height: 20,
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
                      MaterialPageRoute(builder: (context) => Screen2()),
                    );
                  },
                  child: Text("Valider",
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }
}
