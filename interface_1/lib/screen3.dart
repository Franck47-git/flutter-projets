import 'package:flutter/material.dart';
import 'package:interface_1/screen2.dart';

class Choice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Mypage()));
            }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_pin,
                color: Colors.grey,
              ),
              label: '',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.grey,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/d7.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    children: [
                      Text(
                        "welcome",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Zlatan Lukaku",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Text(
                      "Search Barber",
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.cut,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Haircut"),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.car_rental,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Shaving"),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.people_alt_sharp,
                          size: 30,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Coloring"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 160,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.white, spreadRadius: 4),
                          ],
                          color: Colors.black,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/d1.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Get free beard growth essential liquide ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Get free beard growth essential liquide ",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nearby",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Show all",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              NewWidget(),
              SizedBox(
                height: 20,
              ),
              NewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage("images/d2.jpg"), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Barbeking",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Open now",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.alarm,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "09AM - 10PM",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "4.7",
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.location_pin,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1.5Km away",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
