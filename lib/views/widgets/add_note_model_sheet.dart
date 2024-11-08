import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_botton.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child:  AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
          children: [
            const SizedBox(height: 35),
             CustomTextField(hintText: 'Title', onsaved: (value){
              title = value;
             },),
            const SizedBox(height: 20),
             CustomTextField(hintText: 'content', maxlines: 5,onsaved: (value){
              subtitle = value;
              },),
            const SizedBox(height: 35),
            CustomButton(ontap: (){
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();        
              }
              else{
                autovalidateMode = AutovalidateMode.always;
              }
            },),
            const SizedBox(height: 30),
          ],
      ),
    );
  }
}