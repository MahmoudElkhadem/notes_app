import 'package:flutter/material.dart';
import 'package:note/views/widgets/constant.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
     CustomButton({super.key,this.ontap});

  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12)
        ),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: const Center(
          child: Text('Add',
          style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}