import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_notes_cubit/notes_cubit.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/custom_botton.dart';
import 'package:note/views/widgets/custom_text_field.dart';

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

                var noteModel = NoteModel(title: title!, contant: subtitle!, date: DateTime.now().toString(), color: Colors.white.value);    
                BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
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