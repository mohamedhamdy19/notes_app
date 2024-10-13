import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/readnote_cubit/readnote_cubit_cubit.dart';
import 'package:notes_app/widgets/notes_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 163, 15, 4),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => const NotesButtonSheet());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
