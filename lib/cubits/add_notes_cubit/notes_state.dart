part of 'notes_cubit.dart';


abstract class AddNotesState{}

class NotesInitial extends AddNotesState{}
class NotesLoadingNotes extends AddNotesState{}
class NotesSuccessNotes extends AddNotesState{}
class NotesFailerNotes extends AddNotesState{}
