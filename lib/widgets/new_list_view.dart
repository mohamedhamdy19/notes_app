import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/readnote_cubit/readnote_cubit_cubit.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteState>(
      builder: (context, state) {
        var notes = BlocProvider.of<ReadNoteCubit>(context).notes ?? [];
        return Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => CustomNoteItem(
              note: notes[notes.length - index - 1],
            ),
            itemCount: notes.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          ),
        );
      },
    );
  }
}
