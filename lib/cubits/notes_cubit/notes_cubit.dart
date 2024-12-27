import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fechAllNotes() async {
    try {
      var noteBox = Hive.box<NoteModel>(kBox);
      emit(NotesSuccess(noteBox.values.toList()));

    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }




}
