import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/add_note_cubit/readnote_cubit/readnote_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/show_flutter_toast.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (content) {
          return EditNoteView(
            note: note,
          );
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, bottom: 16.0),
              child: ListTile(
                title: Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    note.content,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
                      showFlutterToast("Note ${note.title} deleted!");
                    },
                    icon: const Icon(FontAwesomeIcons.trash,
                        color: Colors.black, size: 24)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, right: 20, top: 12),
              child: Text(
                note.date,
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
