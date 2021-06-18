import 'package:flutter/material.dart';
import 'package:interface_1/main.dart';

class Mypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("images/d7.jpg"), fit: BoxFit.cover),
              ),
            ),
          ),
          Text(
            "Find your friends",
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text("Find your all friends in one place by syning your contact list",
              style: TextStyle(fontSize: 19, color: Colors.grey),
              textAlign: TextAlign.center),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .9,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Positioned(
                      left: 50,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.white, spreadRadius: 2),
                          ],
                          color: Colors.red,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/d4.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.white, spreadRadius: 2),
                          ],
                          color: Colors.black,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/d1.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 150,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.white, spreadRadius: 2),
                          ],
                          color: Colors.amber,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/d6.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 200,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.white, spreadRadius: 2),
                          ],
                          color: Colors.green,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/d5.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 250,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.white, spreadRadius: 2),
                          ],
                          color: Colors.green,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/d2.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Text("more than 1M people using us"),

              RichText(
                text:
                    TextSpan(style: TextStyle(color: Colors.black), children: [
                  TextSpan(text: "more than "),
                  TextSpan(
                    text: "1M people ",
                    style: TextStyle(color: Colors.orange[300]),
                  ),
                  TextSpan(text: "using us "),
                ]),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.orange[300],
              borderRadius: BorderRadius.circular(40),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "Sync contact",
                style: TextStyle(fontSize: 19),
              ),
            ),
          ),
          Text(
            "skip for now",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 19),
          )
        ],
      ),
    );
  }
}
