// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkboxCallback (bool? checkboxState) {
    setState(() {
      isChecked = checkboxState ?? true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a Task',
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          )),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        toggleCheckBoxState: checkboxCallback
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final Function(bool?) toggleCheckBoxState;
  final bool checkboxState;
  const TaskCheckBox(
      {Key? key,
      required this.checkboxState,
      required this.toggleCheckBoxState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      
      onChanged: toggleCheckBoxState,
    );
  }
}

