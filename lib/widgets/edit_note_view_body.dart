import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/readnote_cubit/readnote_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/show_flutter_toast.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;

  const EditNoteViewBody({super.key, required this.note});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  late TextEditingController titleController;
  late TextEditingController contentController;

  @override
  void dispose() {
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    titleController = TextEditingController(text: widget.note.title);
    contentController = TextEditingController(text: widget.note.content);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppbar(
                onPressed: () {
                  widget.note.title = titleController.text;
                  widget.note.content = contentController.text;
                  widget.note.save();
                  BlocProvider.of<ReadNoteCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                  showFlutterToast("Note Edited!");
                },
                title: "Edit Note",
                icon: Icons.check,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(controller: titleController, label: "Title"),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                controller: contentController,
                label: "Your Note",
                maxLines: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
