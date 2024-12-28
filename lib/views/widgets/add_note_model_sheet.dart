import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/views/widgets/add_note_form.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fechAllNotes();
            }
            if (state is AddNotesFailer) {}
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false ,
              child: Padding(
                padding:  EdgeInsets.only(right: 8,left: 8, bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(child: AddNoteForm()),
              ));
          },
        ),
      ),
    );
  }
}
