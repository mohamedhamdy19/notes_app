import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_add_button.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppbar(
                title: "Edit Note",
                icon: Icons.check,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(label: "Title"),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                label: "Your Note",
                maxLines: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
