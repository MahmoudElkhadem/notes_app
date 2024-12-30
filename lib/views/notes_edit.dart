import 'package:flutter/material.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/edit_note_body.dart';

class NotesEdit extends StatelessWidget {
  const NotesEdit({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(note: note,),
    );
  }
}