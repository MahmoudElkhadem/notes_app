import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';
import 'package:note/views/widgets/custom_botton.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
             const SizedBox(height: 40),
             const CustomAppbar(icon: Icons.done,title: 'Edit Page',),
             const SizedBox(height: 40),
             const CustomTextField(hintText: 'Title'),
             const SizedBox(height: 50),
             const CustomTextField(hintText: 'Contant',maxlines: 6,),
             const SizedBox(height: 50),
             CustomButton
             (ontap: (){
              Navigator.pop(context);
              },)
          ],
        ),
      ),
    );
  }
}