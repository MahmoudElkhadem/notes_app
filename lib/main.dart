import 'package:flutter/material.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('baba'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("baba"),
        ) ,
      ),
    );
  }
}