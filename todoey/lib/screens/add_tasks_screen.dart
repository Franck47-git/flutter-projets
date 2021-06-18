import 'package:flutter/material.dart';

class AddTasksSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add tasks",textAlign: TextAlign.center, style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 35,
              color: Colors.lightBlueAccent,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.lightBlueAccent
                ),
                onPressed: (){}, child: Text("Add", style: TextStyle(color: Colors.white,),),
                ),
            ),
          ],
        ),
      ),
      
    );
  }
}