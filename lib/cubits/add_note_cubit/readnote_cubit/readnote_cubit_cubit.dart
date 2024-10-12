import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'readnote_cubit_state.dart';

class ReadnoteCubit extends Cubit<ReadNoteState> {
  ReadnoteCubit() : super(ReadNoteInitial());
  fetchAllNotes() async {
    try {
      var noteBox = Hive.box<NoteModel>(knotesBox);
      var notes = noteBox.values.toList();
      emit(ReadNoteSuccess(notes));
    } catch (e) {
      emit(ReadnoteFail(errMessage: e.toString()));
    }
  }
}
