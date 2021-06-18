import 'package:flutter/material.dart';

import '../dummy_data.dart';

class Accueilready extends StatelessWidget {
  final String catTitle;
  final String catId;

  Accueilready(
    this.catTitle,
    this.catId,
  );
  @override
  Widget build(BuildContext context) {
    final myVariable = DUMMY_MEALS.where((element) {
      return element.categories.contains(catId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: ListView.builder(
          itemCount: myVariable.length,
          itemBuilder: (cxt, index) {
            return Column(
              children: [
                Stack(
                  children: [
                    Card(
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.network(
                          myVariable[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 10,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(20),
                        color: Colors.black54,
                        width: 200,
                        height: 60,
                        child: Text(
                          myVariable[index].title,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          Icon(Icons.schedule),
                          Text(
                            "${myVariable[index].duration}",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            );
          }),
    );
  }
}


