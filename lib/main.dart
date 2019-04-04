import 'package:flutter/material.dart';
import 'package:todos/list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Shit DONE!',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: TodoListPage(title: 'Get Shit DONE.'),
    );
  }
}