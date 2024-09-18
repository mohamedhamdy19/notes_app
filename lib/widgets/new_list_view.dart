import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => CustomNoteItem(color: myColors[index]),
        itemCount: 9,
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
      ),
    );
  }
}

List<Color> myColors = [
  Colors.orange,
  Colors.blue,
  Colors.green,
  Colors.purple,
  Colors.red,
  Colors.grey,
  Colors.teal,
  Colors.cyan,
  Colors.blueAccent
];
