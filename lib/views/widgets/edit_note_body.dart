import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/custom_appbar.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {

  String? title , content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
             const SizedBox(height: 40),
             CustomAppbar(
              icon: Icons.check,
             title: 'Edit Page',
             onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.contant = content ?? widget.note.contant;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fechAllNotes();
               return Navigator.pop(context);
             },),
             const SizedBox(height: 40),
              CustomTextField(
              hintText: 'Title',
              onchanged: (value) {
                title = value;
              },
              ),
             const SizedBox(height: 50),
             CustomTextField(
              hintText: 'Contant',
              maxlines: 6,
              onchanged: (value) {
                content = value;
              },
              ),
             const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}