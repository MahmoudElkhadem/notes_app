import 'package:flutter/material.dart';
import 'package:note/views/widgets/add_note_model_sheet.dart';
import 'package:note/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                context: context,
                builder: (context) {
                  return const AddNoteModelSheet();
                });
          },
          child: const Icon(Icons.add)),
      body: const NotesViewBody(),
    );
  }
}
