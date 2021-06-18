import 'package:flutter/material.dart';

class FirstRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * .6,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(30)),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintStyle: new TextStyle(color: Colors.grey[800]),
                hintText: "dish name",
                fillColor: Colors.white70),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .6,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.red[300], borderRadius: BorderRadius.circular(30)),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(
                  Icons.padding,
                ),
                hintStyle: new TextStyle(color: Colors.grey[800]),
                hintText: "dish name",
                fillColor: Colors.white70),
          ),
        ),
      ]),
    );
  }
}
