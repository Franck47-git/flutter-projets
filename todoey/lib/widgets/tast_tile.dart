import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;

  void onchangeCheckBox(bool newValue) {
    setState(() {
      isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "ListTile",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(ischeckedstate: isChecked, toggleCheckbox: onchangeCheckBox),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool ischeckedstate;
  final Function toggleCheckbox;

  TaskCheckBox({this.ischeckedstate, this.toggleCheckbox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ischeckedstate,
      onChanged: toggleCheckbox,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
