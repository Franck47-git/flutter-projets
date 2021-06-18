import 'package:flutter/material.dart';
import 'package:wednesday_five_mai/ApiSimulator/api_simulator.dart';
import 'package:wednesday_five_mai/models/usermodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLisview(),
    );
  }
}

class MyLisview extends StatefulWidget {
  @override
  _MyLisviewState createState() => _MyLisviewState();
}

class _MyLisviewState extends State<MyLisview> {
  List<UserModel> _userList = [];

  ApiSimulator api = ApiSimulator();

  @override
  void initState() {
    _userList = api.getUserModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text(
          "Mes Donnes recuperées",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.home,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.face,
                color: Colors.white,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                itemCount: _userList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                        child: Container(
                          margin: EdgeInsets.all(20),
                          width: double.infinity,
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("${_userList[index].name}", style: TextStyle(fontSize: 24, color: Colors.green),),
                              Text("${_userList[index].prix} Fcfa", style: TextStyle(fontSize: 24, color: Colors.black, fontStyle: FontStyle.italic),),
                  
                            ],

                          ),
                        ),
                      )
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
