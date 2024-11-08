import 'package:flutter/material.dart';
import 'package:note/views/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,this.maxlines = 1, this.onsaved});

  final String hintText;
  final int maxlines;
  final void Function(String?)? onsaved;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        else {
          return null;
        }
      },
      maxLines: maxlines,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: primaryColor
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(primaryColor)

      )
    );
  }
}

OutlineInputBorder buildBorder ([color]){
          return OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: color ?? Colors.white),
          );
}