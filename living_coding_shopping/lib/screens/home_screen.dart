import 'package:flutter/material.dart';
import 'package:living_coding_shopping/providers/plats_providers.dart';
import 'package:living_coding_shopping/screens/detail_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<PlatsProviders>(context).items;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 00),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Search",
                      style: TextStyle(fontSize: 40, fontFamily: "Lato"),
                    ),
                    Text(
                      "for recipes",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 60,
                        color: Colors.grey[300],
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "dish name",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 60,
                        color: Colors.red,
                        child: Row(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 30,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "dish name",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                            padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        data[index].icon,
                                        color: Colors.grey,
                                      ),
                                     
                                      Text("${data[index].country}")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Text(
                "Trailing",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.8,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, DetailscreenPage.routeName,
                              arguments: data[index].id);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    height: MediaQuery.of(context).size.width,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: data[index].color,
                                    ),
                                  ),
                                  Positioned(
                                      top: 30,
                                      left: 30,
                                      right: 30,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                              data[index].imageUrl),
                                              ),
                                              ),
                                  Positioned(
                                      bottom: 70,
                                      left: 20,
                                      child: Text("${data[index].name}", style: TextStyle(color: Colors.white, fontFamily: "BalooTammudu2", fontSize: 20, fontWeight: FontWeight.bold),)),
                                  Positioned(
                                      left: 20,
                                      bottom: 5,
                                      child: Container(
                                        width: 100,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.star,
                                                  color: Colors.amber),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(data[index]
                                                  .palmares
                                                  .toString())
                                            ],
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
