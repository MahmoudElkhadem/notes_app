part of 'notes_cubit.dart';


abstract class AddNotesState{}

class AddNotesInitial extends AddNotesState{}
class AddNotesLoadingNotes extends AddNotesState{}
class AddNotesSuccessNotes extends AddNotesState{}
class AddNotesFailerNotes extends AddNotesState{
  final String errMessage;

  AddNotesFailerNotes(this.errMessage);
}
