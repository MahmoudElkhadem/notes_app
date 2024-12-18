import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/constant.dart';

part 'notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState>{
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async
  {
    emit(AddNotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kBox);
      emit(AddNotesSuccess());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNotesFailer(e.toString()));
    }
    
    
  }
}