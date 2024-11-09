import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<AddNotesState>{
  NotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async
  {
    emit(AddNotesLoadingNotes());
    try {
      var noteBox = Hive.box<NoteModel>(kBox);
      emit(AddNotesSuccessNotes());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNotesFailerNotes(e.toString()));
    }
    
    
  }
}