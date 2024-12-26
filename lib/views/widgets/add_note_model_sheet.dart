import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_notes_cubit/notes_cubit.dart';
import 'package:note/views/widgets/add_note_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

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
            }
            if (state is AddNotesFailer) {
              // ignore: avoid_print
              print('failure ${state.errMessage}');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNotesLoading ? true : false,
                child: const SingleChildScrollView(child: AddNoteForm()));
          },
        ),
      ),
    );
  }
}
