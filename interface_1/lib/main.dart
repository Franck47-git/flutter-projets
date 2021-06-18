import 'package:flutter/material.dart';
import 'package:interface_1/screen2.dart';
import 'package:interface_1/screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mypage(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Mypage()));
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/d1.jpg"),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Albert Barber Shop",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text("2972 whertghtu post user"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.grey),
                          SizedBox(width: 20),
                          Text(
                            "4.7",
                            style: TextStyle(color: Colors.yellow),
                          ),
                          SizedBox(width: 20),
                          Text("218 reviews"),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: Icon(Icons.favorite_outline),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[50]),
                    child: Text("Men's haircut",
                        style: TextStyle(color: Colors.blue)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    alignment: Alignment.center,
                    // margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[50]),
                    child: Text("Hair styling",
                        style: TextStyle(color: Colors.blue)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[50]),
                    child:
                        Text("Coloring", style: TextStyle(color: Colors.blue)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 100,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue[50]),
                  child: Text("Coloring", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(left: 20, top: 30, right: 20),
                child: Text(
                  "The child widgets are of Stack are printed in order the top-most widget becomes the bottom-most on the screen and vice-versa. We can use the is grernbn",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 19,
                  ),
                )),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 50, right: 20),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/d2.jpg"),
                                fit: BoxFit.cover),
                            color: Colors.black,
                            shape: BoxShape.circle),
                      ),
                      Positioned(
                        left: 40.0,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/d3.jpg"),
                                  fit: BoxFit.cover),
                              boxShadow: [
                                BoxShadow(color: Colors.white, spreadRadius: 2),
                              ],
                              color: Colors.red,
                              shape: BoxShape.circle),
                        ),
                      ),
                      Positioned(
                        left: 75.0,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/d1.jpg"),
                                fit: BoxFit.fill),
                            boxShadow: [
                              BoxShadow(color: Colors.white, spreadRadius: 2),
                            ],
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 110.0,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "+3",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(color: Colors.white, spreadRadius: 2),
                          ], color: Colors.orange[100], shape: BoxShape.circle),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(left: 20, top: 30, right: 20),
                width: double.infinity,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (cxt) => Choice()));
                  },
                  child: Text(
                    "Book Now",
                    style: TextStyle(fontSize: 19),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
