import 'package:flutter/material.dart';
import 'package:livecoding_dribbble/dribblroute.dart';

class Pageroute extends StatefulWidget {
  @override
  _PagerouteState createState() => _PagerouteState();
}

class _PagerouteState extends State<Pageroute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dribbble()));
                        }),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Expanded(
              child: 
                Container(
                  alignment: Alignment.topCenter,
                 
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),

                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(80),
                          image: DecorationImage(
                            image: AssetImage("images/f1.jpg"),
                            fit: BoxFit.fill
                            ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Saba soup with", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                      Text("Shrimp and Greens", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.alarm),
                                Text("50 min"),
                              ],
                            ),
                            
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber,),
                                Text("4.7"),
                              ],
                            ),
                             Row(
                              children: [
                                Icon(Icons.fireplace, color: Colors.red,),
                                Text("325 Kcal"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          
                        ],
                      )
                    ],
                  ),
                ),
            ),
        ],
      ),
    );
  }
}
