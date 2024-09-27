import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_add_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class NotesButtonSheet extends StatelessWidget {
  const NotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(label: "Title"),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              label: "Your Note",
              maxLines: 6,
            ),
            CustomAddButton()
          ],
        ),
      ),
    );
  }
}
