import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 9),
        child: CustomNoteItem(color:const Color(0xFFFFCC80),date: '19 oct 2002',title: 'Frist Note',subtitle: 'Welcome to my app',),
      );
    },);
  }
}