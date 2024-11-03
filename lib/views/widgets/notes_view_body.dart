import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';
import 'package:note/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18),
      child:  Column(
        children:[
           SizedBox(
            height: 40,
          ),
           CustomAppbar(),
          Expanded(child: NotesListView()),
          //CustomNoteItem(color:const Color.fromARGB(255, 234, 105, 225),date: '2 Nov 2024',title: 'To My Love',subtitle: 'I want to be the reason behind your smile.',)
        ]
      ),
    );
  }
}