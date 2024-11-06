import 'package:flutter/material.dart';
import 'package:note/views/widgets/edit_note_body.dart';

class NotesEdit extends StatelessWidget {
  const NotesEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteBody(),
    );
  }
}