import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon Application",
      debugShowCheckedModeBanner: false,
      home: MyMenupage(),
    );
  }
}

class MyMenupage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyMenupage();
  }
}

class _MyMenupage extends State<MyMenupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ForegroundColor"),
          //backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.amber,
        ),
        body: Column());
  }
}

// Statefull widget

// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: [
//             Flexible(
//               flex: 3,
//               child: Container(
//                 color: Color(0XFF1a202c),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     SizedBox(height: 15,),
//                     Container(

//                       width: 60,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         color: Colors.amber,
//                         borderRadius: BorderRadius.circular(150),
//                         image: DecorationImage(
//                             image: AssetImage('assets/h1.jpg'),
//                             fit: BoxFit.cover),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             color: Colors.amber,
//                             borderRadius: BorderRadius.circular(150),
//                             image: DecorationImage(
//                                 image: AssetImage('assets/w1.jpg'),
//                                 fit: BoxFit.cover),
//                           ),
//                         ),
//                        SizedBox(width: 20,),
//                         Container(
//                           width: 60,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             color: Colors.amber,
//                             borderRadius: BorderRadius.circular(150),
//                             image: DecorationImage(
//                                 image: AssetImage('assets/h3.jpg'),
//                                 fit: BoxFit.cover),
//                           ),
//                         ),
//                       ],
//                     ),
//                     AvatarGlow(
//                       glowColor: Colors.white,
//                       endRadius: 90.0,
//                       duration: Duration(milliseconds: 2000),
//                       repeat: true,
//                       showTwoGlows: true,
//                       repeatPauseDuration: Duration(milliseconds: 100),
//                       child: Material(
//                         // Replace this child with your own
//                         elevation: 20.0,
//                         shape: CircleBorder(),
//                         child: CircleAvatar(
//                           backgroundColor: Colors.grey[100],
//                           backgroundImage: AssetImage("assets/w2.jpg"),
//                           radius: 40.0,
//                         ),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             color: Colors.amber,
//                             borderRadius: BorderRadius.circular(150),
//                             image: DecorationImage(
//                                 image: AssetImage('assets/w4.jpg'),
//                                 fit: BoxFit.cover),
//                           ),
//                         ),
//                          SizedBox(width: 20,),
//                         Container(
//                           width: 60,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             color: Colors.amber,
//                             borderRadius: BorderRadius.circular(150),
//                             image: DecorationImage(
//                                 image: AssetImage('assets/w3.jpg'),
//                                 fit: BoxFit.cover),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                       width: 60,
//                       height: 60,
//                       decoration: BoxDecoration(
//                           color: Colors.amber,
//                           borderRadius: BorderRadius.circular(150),
//                           image: DecorationImage(
//                               image: AssetImage('assets/h2.jpg'),
//                               fit: BoxFit.cover)),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Flexible(
//               child: Container(
//                 color: Color(0XFF1a202c),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 50),
//                       child: Text(
//                         "Engage and entertain",
//                         style: TextStyle(
//                             fontSize: 22,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(20),
//                       child: Text(
//                         "Share your stories whith others people. gain connections and don't forget to have fun!",
//                         style: TextStyle(fontSize: 18, color: Colors.grey),
//                         textAlign: TextAlign.center,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Flexible(
//               child: Container(
//                 width: double.infinity,
//                 color: Color(0XFF1B212E),
//                 child: Column(
//                   children: [
//                     Container(
//                       //padding: EdgeInsets.only(top: 10),
//                       width: 350,
//                       height: 55,
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                               primary: Color(0XFF31ddd3),
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10))),
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => HomePage2()));
//                           },
//                           child: Text(
//                             "Singn in",
//                             style: TextStyle(fontSize: 20),
//                           )),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(top: 20),
//                       width: 350,
//                       height: 80,
//                       //color: Color(0XFF77e0b5),
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                               primary: Color(0XFF1a2430),
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10))),
//                           onPressed: () {
//                             print("=======Oui==oui====");
//                           },
//                           child: Text(
//                             "Register",
//                             style: TextStyle(fontSize: 20),
//                           )),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1e283b),
      body: Container(
        height: 400,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Flexible(
                        child: Container(
                      padding: EdgeInsets.all(10),
                      //alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Today',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(Icons.notifications)
                            ],
                          ),
                          Text('Tuesday, 16 March',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    )),
                    Flexible(
                        child: Container(
                      color: Color(0xff20324d),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.black12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  //height: MediaQuery.of(context).size.height,
                                  child: Text("11:00",
                                      style: TextStyle(color: Colors.white)),
                                )),
                                Flexible(
                                    flex: 4,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Daily Meeting',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              Text(
                                                  'data //mainAxisAlignment: MainAxisAlignment.spaceBetween,',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  //height: MediaQuery.of(context).size.height,
                                  child: Text("19:00",
                                      style: TextStyle(color: Colors.white)),
                                )),
                                Flexible(
                                    flex: 4,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Webinaire',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              Text(
                                                  'data //mainAxisAlignment: MainAxisAlignment.spaceBetween,',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
