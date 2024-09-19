import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class NotesButtonSheet extends StatelessWidget {
  const NotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextField(label: "Title"),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(label: "Your Note")
        ],
      ),
    );
  }
}
