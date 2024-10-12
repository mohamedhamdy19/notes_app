part of 'readnote_cubit_cubit.dart';

@immutable
sealed class ReadnoteState {}

final class ReadnoteInitial extends ReadnoteState {}

final class ReadnoteLoading extends ReadnoteState {}

final class ReadnoteSuccess extends ReadnoteState {}

final class ReadnoteFail extends ReadnoteState {
  final String errMessage;

  ReadnoteFail({required this.errMessage});
}
