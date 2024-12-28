import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fechAllNotes() {

      var noteBox = Hive.box<NoteModel>(kBox);
      notes = noteBox.values.toList();
      emit(NotesSuccess());
  }
}
