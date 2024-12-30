import 'package:flutter/material.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, this.icon = Icons.search, this.title = 'Notes',this.onPressed});

  final IconData icon;

  final String title;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(title,
        style: const TextStyle(
          fontSize: 28
        ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child:  IconButton(onPressed: onPressed,icon: Icon(icon,size: 27,)),
        )
    ],);
  }
}