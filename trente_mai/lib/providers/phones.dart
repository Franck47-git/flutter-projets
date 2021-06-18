import 'package:flutter/material.dart';
import 'package:trente_mai/models/phone.dart';

class Phones extends ChangeNotifier {

  List<Phone> _phone = [
   Phone( Colors.red, 1, 'samsung', 100000 ),
   Phone( Colors.blue, 2, 'alcatel', 100000 ),
   Phone( Colors.black, 3, 'nokia', 100000 ),
   Phone( Colors.blueGrey, 4, 'iphone', 100000 ),
   Phone( Colors.blue, 5, '1+', 100000 ),
  ];
  
  List<Phone> get phone => [..._phone];
}
