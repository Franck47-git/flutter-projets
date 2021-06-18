import 'package:flutter/material.dart';
import 'package:state_livecoding/flexible2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackUsing(),
    );
  }
}

class StackUsing extends StatefulWidget {
  @override
  _StackUsingState createState() => _StackUsingState();
}

class _StackUsingState extends State<StackUsing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .4,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      image: DecorationImage(
                          image: AssetImage("images/w4.jpg"),
                          fit: BoxFit.cover)),
                ),
                //SizedBox(height: 50,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    // width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.height / 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                          child: Icon(
                            Icons.close,
                            size: 30,
                            color: Colors.pink,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.pink,
                          radius: 60,
                          child: Icon(
                            Icons.favorite_sharp,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                          child: Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.purple,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(child: PartyTwo())
        ],
      ),
    );
  }
}




















// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//         body: Column(
//       children: [
//         Flexible(
//             child: Stack(
//           children: [
//             Container(
//               width: size.width,
//               height: size.height * .4,
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Container(
//                       margin: EdgeInsets.only(left: 30),
//                       height: 70,
//                       width: 70,
//                       color: Colors.red,
//                     ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(30),
//                       bottomRight: Radius.circular(30)),
//                   image: DecorationImage(
//                       image: AssetImage(
//                         'images/f2.jpg',
//                       ),
//                       fit: BoxFit.cover)),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 width: size.width / 1.2,
//                 height: size.height * .2,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       height: 80,
//                       width: 80,
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle, color: Colors.pink),
//                     ),
//                     Container(
//                       height: 100,
//                       width: 100,
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle, color: Colors.blue),
//                     ),
//                     Container(
//                       height: 80,
//                       width: 80,
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle, color: Colors.grey),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               right: 100,
//               bottom: 100,
//               top: 100,
//               left: 100,
//               child: Container(
//                 height: 80,
//                 width: 80,
//                 decoration:
//                     BoxDecoration(shape: BoxShape.circle, color: Colors.red),
//               ),
//             ),
//           ],
//         )),
//         Flexible(
//             child: Container(
//           color: Colors.blueGrey,
//         )),
//       ],
//     ));
//   }
// }
