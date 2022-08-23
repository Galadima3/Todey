// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a Task'),
      trailing: Checkbox(
        value: false,
        onChanged: null,
      ),
    );
  }
}
