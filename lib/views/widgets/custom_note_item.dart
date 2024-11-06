import 'package:flutter/material.dart';
import 'package:note/views/notes_edit.dart';

// ignore: must_be_immutable
class CustomNoteItem extends StatelessWidget {
   CustomNoteItem({super.key, required this.color, required this.title, required this.subtitle, required this.date});
  Color color;
  String title;
  String subtitle;
  String date;

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
          color: color,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(title,style:const TextStyle(fontSize: 25,color: Colors.black)),
              subtitle: Text(subtitle,style: TextStyle(fontSize: 19,color: Colors.black.withOpacity(.5))),
              trailing: IconButton(onPressed: (){} , icon: const Icon(Icons.delete,color: Colors.black,size: 30,)),
            ),
             Padding(
               padding: const EdgeInsets.only(right: 15),
               child: Text(date,style: TextStyle(color: Colors.black.withOpacity(.5))),
             )
          ],
        )
      ),
    );
  }
}