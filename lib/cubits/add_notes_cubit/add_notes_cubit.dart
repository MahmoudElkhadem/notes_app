import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/constant.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState>{
  AddNotesCubit() : super(AddNotesInitial());
  Color color = const Color(0xFFd48c70);
  addNote(NoteModel note) async
  {
    note.color = color.value;
    emit(AddNotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kBox);
      await noteBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailer(e.toString()));
    }
    
    
  }
}