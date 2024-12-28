import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/notes_edit.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const NotesEdit();
        }));
      },
      child: Container(
        padding:const EdgeInsets.only(top: 23,bottom: 23,left:5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,style:const TextStyle(fontSize: 25,color: Colors.black)),
              subtitle: Text(note.contant,style: TextStyle(fontSize: 19,color: Colors.black.withOpacity(.5))),
              trailing: IconButton(
                onPressed: (){
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fechAllNotes();
                  } , icon: const Icon(Icons.delete,color: Colors.black,size: 30,)),
            ),
             Padding(
               padding: const EdgeInsets.only(right: 15),
               child: Text(note.date,style: TextStyle(color: Colors.black.withOpacity(.5))),
             )
          ],
        )
      ),
    );
  }
}