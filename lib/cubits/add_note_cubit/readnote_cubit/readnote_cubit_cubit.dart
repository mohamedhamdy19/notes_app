import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'readnote_cubit_state.dart';

class ReadNoteCubit extends Cubit<ReadNoteState> {
  ReadNoteCubit() : super(ReadNoteInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var noteBox = Hive.box<NoteModel>(knotesBox);

    notes = noteBox.values.toList();
    emit(ReadNoteSuccess());
  }
}
