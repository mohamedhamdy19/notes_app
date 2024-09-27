import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (content) {
          return const EditNoteView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, bottom: 16.0),
              child: ListTile(
                title: const Text(
                  "New Title",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    "Build your career with Mohamed Hamdy",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.trash,
                        color: Colors.black, size: 24)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, right: 20, top: 12),
              child: Text(
                "Note's Date",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
