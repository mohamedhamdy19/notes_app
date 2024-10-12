part of 'readnote_cubit_cubit.dart';

@immutable
sealed class ReadNoteState {}

final class ReadNoteInitial extends ReadNoteState {}

final class ReadNoteLoading extends ReadNoteState {}

final class ReadNoteSuccess extends ReadNoteState {
  final List<NoteModel> notes;
  ReadNoteSuccess(this.notes);
}

final class ReadnoteFail extends ReadNoteState {
  final String errMessage;

  ReadnoteFail({required this.errMessage});
}
