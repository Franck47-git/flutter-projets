import 'package:flutter/material.dart';
import 'package:living_coding_shopping/providers/plats_providers.dart';
import 'package:living_coding_shopping/screens/bottom_screen.dart';
import 'package:living_coding_shopping/screens/detail_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> PlatsProviders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'BalooTammudu2'
         
        ),
        initialRoute: "/",
        routes: {
          "/": (cxt) => BottomScreen(),
          DetailscreenPage.routeName : (cxt) => DetailscreenPage(),
        },
      ),
    );
  }
}

