import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Notes'),
          actions: [IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search)
            )],
        ),
        body: Container(
          decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          ),
          height: 200,
          width: double.infinity,
        )
      );
  }
}