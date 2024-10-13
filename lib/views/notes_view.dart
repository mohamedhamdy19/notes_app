import 'package:flutter/material.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/widgets/notes_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
        backgroundColor: kPrimaryColor,
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
