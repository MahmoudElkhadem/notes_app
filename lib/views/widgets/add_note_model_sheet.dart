import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_botton.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child:  Column(
            children: [
              const SizedBox(height: 35),
              const CustomTextField(hintText: 'Title',),
              const SizedBox(height: 20),
              const CustomTextField(hintText: 'content', maxlines: 5,),
              const SizedBox(height: 35),
              CustomButton(),
              const SizedBox(height: 30),
            ],
        ),
      ),
    );
  }
}