import 'package:flutter/material.dart';
import 'package:note/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: NotesViewBody() ,
      );
  }
}

