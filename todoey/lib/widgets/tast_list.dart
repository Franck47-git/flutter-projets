import 'package:flutter/material.dart';
import 'package:todoey/model/mode.dart';
import 'package:todoey/widgets/tast_tile.dart';


class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Tasks> tasts = [
    Tasks(name: "Achetez des oeufs"),
    Tasks(name: "Achetez des pommes"),
    Tasks(name: "Achetez du lait"),
    Tasks(name: "Achetez du sucre"),
    Tasks(name: "Achetez du pain"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
