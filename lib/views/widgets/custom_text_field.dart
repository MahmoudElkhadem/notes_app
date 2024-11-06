import 'package:flutter/material.dart';
import 'package:note/views/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,this.maxlines = 1});

  final String hintText;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return  TextField(
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