import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18),
      child:  Column(
          children: [
            SizedBox(height: 35),
            CustomTextField(hintText: 'Title',),
            SizedBox(height: 20),
            CustomTextField(hintText: 'content', maxlines: 5,)
          ],
      ),
    );
  }
}