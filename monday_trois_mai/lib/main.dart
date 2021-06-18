import 'package:flutter/material.dart';
import 'package:monday_trois_mai/screen/secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiCall(),
    );
  }
}

class Dribbble extends StatefulWidget {
  @override
  _DribbbleState createState() => _DribbbleState();
}

class _DribbbleState extends State<Dribbble> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.delete,
              color: Colors.black,
            ),
          )
        ],
      ),
      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
             BottomNavigationBarItem(
                label: "" ,
                icon:  Icon(Icons.person, color: Colors.black,)),
             BottomNavigationBarItem(
                label: "",
                icon:  Icon(Icons.phone,color: Colors.black,)),
             BottomNavigationBarItem(
                label: "",
                icon:  Icon(Icons.camera_alt,color: Colors.black,)),
             BottomNavigationBarItem(
               label: "",
                icon:  Icon(Icons.message,color: Colors.orange,)),
             BottomNavigationBarItem(
                label: "",
                icon: new Icon(Icons.person_pin,color: Colors.black,)),
          ],
        ),
      
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Chats",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.edit),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search for chats & messages',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // ListTile(
          //   title: Text("Tedtrsr"),
          //   trailing: Icon(Icons.check),
          //   subtitle: Text("Hi john how are you doing?"),
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("images/d4.jpg"), fit: BoxFit.cover),
                ),
                child: Container(

                  width: 20,
                  height: 20,
                   decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("John Smith",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("Hi john how are you doing?"),
                ],
              ),
              Icon(Icons.check)
            ],
          ),
            SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("images/d3.jpg"), fit: BoxFit.cover),
                ),
                child: Container(
                  width: 20,
                  height: 20,
                   decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mia Nguen", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("you: cool let's meet a 16:00 \n\n near to shopping mail!"),
                ],
              ),
              Icon(Icons.check)
            ],
          ),

           
           Container(
              margin: EdgeInsets.all(20),
             
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/d1.jpg"), fit: BoxFit.cover),
                  ),
                  child: Container(
                    width: 20,
                    height: 20,
                     decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  )
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Henna beck",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Typing...", style: TextStyle(color: Colors.orange),),
                  ],
                ),
                Icon(Icons.check)
              ],
          ),
           ),

            Container(
              margin: EdgeInsets.all(20),
             
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/d1.jpg"), fit: BoxFit.cover),
                  ),
                  child: Container(
                    width: 20,
                    height: 20,
                     decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  )
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nuria Cortez",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Typing...", style: TextStyle(color: Colors.orange),),
                  ],
                ),
                Icon(Icons.check)
              ],
          ),
           ),
        ],
      ),
    );
  }
}
