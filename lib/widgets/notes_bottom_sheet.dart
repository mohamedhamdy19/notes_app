import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:notes_app/widgets/show_flutter_toast.dart';

class NotesButtonSheet extends StatelessWidget {
  const NotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFail) {
              showFlutterToast("failed ${state.errMessage}");
              debugPrint("${state.errMessage}");
            } else if (state is AddNoteSuccess) {
              showFlutterToast("Note added successfully!");
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: SingleChildScrollView(child: const AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}
