import 'package:flutter_bloc/flutter_bloc.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<AddNotesState>{
  NotesCubit() : super(NotesInitial());
}