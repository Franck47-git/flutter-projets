import 'package:flutter/material.dart';

class CustomAppBar extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.85);
    path.cubicTo(size.width/3, size.height, 2 * size.width/3, size.height*0.7, size.width, size.height * 0.85); 
    
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
