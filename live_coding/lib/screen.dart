import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("images/child.jpg"),
                          fit: BoxFit.cover)),
                ),
                Text(
                  "Edgard Scultz",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 6),
                    Text(
                      "New york",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment method",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      child: Row(
                    children: [
                      Icon(Icons.add),
                      Text("Add new"),
                    ],
                  ))
                ],
              ),
            ),


            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [
                              Color(0XFF191d21),
                              Color(0xFF27313d),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Color(0XFF751d23), shape: BoxShape.circle),
                        ),
                        Positioned(
                          top: 0,
                          left: 10,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0XFF82612e),
                                shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 60,
                    child: Text(
                      "EDGARD SCULT",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 30,
                    child: Text(
                      ".... 3673",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Positioned(
                      left: 105,
                      bottom: 35,
                      child: Icon(
                        Icons.comment_bank_outlined,
                        size: 10,
                        color: Colors.white,
                      ),
                      ),
                  Positioned(
                    right: 20,
                    bottom: 30,
                    child: Text(
                      "\$2,912.56",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Recent transactions",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text("10 april, 6:39 am"),
              subtitle: Text("Tessia model 3 - 10m 30s"),
              trailing: Text(
                "\$2,912.56",
              ),
            ),
            ListTile(
              title: Text("10 april, 6:39 am"),
              subtitle: Text("Tessia model 3 - 10m 30s"),
              trailing: Text(
                "\$2,912.56",
              ),
            ),
            ListTile(
              title: Text("10 april, 6:39 am"),
              subtitle: Text("Tessia model 3 - 10m 30s"),
              trailing: Text(
                "\$2,912.56",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
