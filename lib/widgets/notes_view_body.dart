import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
          child: Column(
        children: [
          const CustomAppbar(),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => const CustomNoteItem(),
              itemCount: 10,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
            ),
          )
        ],
      )),
    );
  }
}
