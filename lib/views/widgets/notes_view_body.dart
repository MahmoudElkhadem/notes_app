import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';
import 'package:note/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.symmetric(horizontal: 18),
      child:  Column(
        children:[
          const SizedBox(
            height: 40,
          ),
          const CustomAppbar(),
          const SizedBox(height: 15),
          CustomNoteItem(color:const Color(0xFFFFCC80),date: '19 oct 2002',title: 'Frist Note',subtitle: 'Welcome to my app',),
          const SizedBox(height: 15),
          CustomNoteItem(color:const Color.fromARGB(255, 234, 105, 225),date: '2 Nov 2024',title: 'To My Love',subtitle: 'I want to be the reason behind your smile.',)
        ]
      ),
    );
  }
}