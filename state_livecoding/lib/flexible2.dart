import 'package:flutter/material.dart';

class PartyTwo extends StatelessWidget {
  const PartyTwo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Madeline, 20", style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
                    Text("Graphic Designer", style: TextStyle(
                fontSize: 22,
                color: Colors.grey
              ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text("About", style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.white,
                      child: Icon(Icons.desktop_access_disabled_outlined,
                      color: Colors.grey,
                      ),
                      ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Read more", textAlign: TextAlign.left,
                     style: TextStyle(
                fontSize: 19,
                color: Colors.grey
              ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "I name is is Madeline and i enjoy meet new people and finding ways to help them have an uplifting experience ...",
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
             margin: EdgeInsets.all(20),
            alignment: Alignment.topLeft,
            child: Text("Interests",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black
                ),
                textAlign: TextAlign.left,
              ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 10),
                  alignment: Alignment.center,
                  height: 40,
                  child: Text("Music"),
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  child: Text("Photo"),
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                   margin: EdgeInsets.only(left: 10, right: 20),
                  alignment: Alignment.center,
                  height: 40,
                  child: Text("Art History"),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          ///////// line two

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 10),
                  alignment: Alignment.center,
                  height: 40,
                  child: Text("Design"),
                  decoration: BoxDecoration(
                   color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  child: Text("Art Film"),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                   margin: EdgeInsets.only(left: 10, right: 20),
                  alignment: Alignment.center,
                  height: 40,
                  child: Text("dancing"),
                  decoration: BoxDecoration(
                   color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}