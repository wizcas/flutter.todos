import 'package:flutter/material.dart';
import 'package:todos/todo.model.dart';

class TodoDetailPage extends StatelessWidget {
  final Todo todo;
  TodoDetailPage({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(todo.title)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(todo.description),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        tooltip: 'Mark it done',
        onPressed: () {
          Navigator.pop(context, true);
        },
      ),
    );
  }
}
