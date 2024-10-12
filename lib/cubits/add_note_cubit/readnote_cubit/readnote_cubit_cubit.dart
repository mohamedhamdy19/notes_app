import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'readnote_cubit_state.dart';

class ReadnoteCubit extends Cubit<ReadnoteState> {
  ReadnoteCubit() : super(ReadnoteInitial());
}
