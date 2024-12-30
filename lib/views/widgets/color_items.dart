import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_notes_cubit/add_notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, this.isActive, required this.color});
  
  final bool? isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive == true ? CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 24,
        backgroundColor: color,
      ),
    ) :  CircleAvatar(
        radius: 28,
        backgroundColor: color,
      );
  }
}

class ListOfColors extends StatefulWidget {
  const ListOfColors({super.key});

  @override
  State<ListOfColors> createState() => _ListOfColorsState();
}

class _ListOfColorsState extends State<ListOfColors> {
  int currentIndex = 0;
  List<Color> colors = [
    const Color(0xFFf9f1f0),
    const Color(0xFFfadcd9),
    const Color(0xFFf8afa6),
    const Color(0xFFf79489),
    const Color(0xFFd48c70)
  ]; 
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 28*2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: GestureDetector(
              onTap: (){
                currentIndex = index;
                BlocProvider.of<AddNotesCubit>(context).color = colors[index];
                setState(() {
                  
                });
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index
                ),
            ),
          );
        },),
    );
  }
}