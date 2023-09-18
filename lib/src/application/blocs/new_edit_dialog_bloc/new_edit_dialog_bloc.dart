import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';

part 'new_edit_dialog_event.dart';
part 'new_edit_dialog_state.dart';

class NewEditDialogBloc extends Bloc<NewEditDialogEvent, NewEditDialogState> {
  final StudentModel newModel;
  NewEditDialogBloc({required this.newModel}) : super(NewEditDialogInitial()) {
    on<CancelledEvent>(cancelledDialog);
    on<ClearedClickedEvent>(clearedFields);
    on<SubmittedClickedEvent>(submitNewData);
  }

  FutureOr<void> cancelledDialog(
      CancelledEvent event, Emitter<NewEditDialogState> emit) {
    emit(CancelledState());
  }

  FutureOr<void> clearedFields(
      ClearedClickedEvent event, Emitter<NewEditDialogState> emit) {
    emit(FieldClearedState());
  }

  FutureOr<void> submitNewData(
      SubmittedClickedEvent event, Emitter<NewEditDialogState> emit) {
    emit(SubmittedState(
        newModel: event.newStudent! ));
  }
}
