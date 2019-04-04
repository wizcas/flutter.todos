import 'package:flutter/material.dart';
import 'package:todos/detail.dart';
import 'package:todos/todo.model.dart';

class TodoListPage extends StatelessWidget {
  final String title;
  final todos = List<Todo>.generate(
      20,
      (index) =>
          Todo('Shit #$index', 'You have to get over with this shit #$index'));

  TodoListPage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => ListTile(
              title: Text(todos[index].title),
              onTap: () async {
                final resp = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TodoDetailPage(todo: todos[index]),
                    ));
                Scaffold.of(context)
                  ..removeCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      duration: const Duration(seconds: 2),
                      content: Text(
                          '${todos[index].title} is ${resp ? 'Done' : 'Pending'}')));
              },
            ),
      ),
    );
  }
}
