import 'package:flutter/material.dart';

class Tasks {
  final String name;
  bool isDone;

  Tasks({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
