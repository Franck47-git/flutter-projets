import 'package:flutter/material.dart';
import 'newpage.dart';

class Dribbble extends StatefulWidget {
  @override
  _DribbbleState createState() => _DribbbleState();
}

class _DribbbleState extends State<Dribbble> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      " Restaurant",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("20-30mn"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("2.4Km"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Restaurant")
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 20),
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('"Orange sandwiches is delicious"'),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("4.7"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 10),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("Recommended"),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("popular"),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("Noodles"),
                ),
              ),
            ],
          ),
          // 1er CARD
          Row(
            children: [
              GestureDetector(
                onTap: () {
                 setState(() {
                   Navigator.push(context,
                      MaterialPageRoute(builder: (cxt) => Pageroute()));                  
                 });
                },
                child: Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.amber,
                            image: DecorationImage(
                                image: AssetImage("images/f1.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 20, top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Orange sandwiches",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.arrow_right_outlined)
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "N°.1 in sales",
                                style: TextStyle(color: Colors.yellow),
                              ),
                              Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          // 2eme card
          //
          Row(
            children: [
              Container(
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  margin: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage("images/f2.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "sai Ua Samun Phrai",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.arrow_right_outlined)
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Low fat",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "18",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // 3eme Card
          //
          Row(
            children: [
              Container(
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  margin: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage("images/f3.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Ratatouille Pasta",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Icon(Icons.arrow_right_outlined)
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Highly recommended",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "17",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(right: 20),
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 30,
              child: Icon(Icons.ac_unit, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
