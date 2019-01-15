import 'package:flutter/material.dart';
import 'package:simpletodo/todo.dart';

class TodoDialog extends StatelessWidget {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New Todo'),
      content: TextField(
        autofocus: true,
        controller: controller,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Add'),
          onPressed: () {
            if (controller.value.text.isNotEmpty) {
              final todo = Todo(title: controller.value.text);
              controller.clear();
              Navigator.of(context).pop(todo);
            }
          },
        )
      ],
    );
  }
}
