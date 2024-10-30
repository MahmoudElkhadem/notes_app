import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: const Column(
        children:[
          SizedBox(
            height: 40,
          ),
          CustomAppbar()
        ]
      ),
    );
  }
}