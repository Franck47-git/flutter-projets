import 'package:flutter/material.dart';
import 'constant.dart';



class IconSContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconSContent({this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Color(0xFFFFFFFF),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: textStyleLable
        ),
      ],
    );
  }
}
