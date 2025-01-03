import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/model/note_model.dart';
import 'package:note/simple_bloc_observer.dart';
import 'package:note/views/notes_view.dart';
import 'package:note/views/widgets/constant.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.initFlutter();
  Bloc.observer = MyBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
          theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
          debugShowCheckedModeBanner: false,
          home: const NotesView()),
    );
  }
}
