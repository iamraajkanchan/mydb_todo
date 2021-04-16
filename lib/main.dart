import 'package:flutter/material.dart';
import 'package:mydb_todo/screens/note_list.dart';

void main() {
  runApp(MaterialApp(
    title: 'My ToDo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    home: NoteList(),
  ));
}
