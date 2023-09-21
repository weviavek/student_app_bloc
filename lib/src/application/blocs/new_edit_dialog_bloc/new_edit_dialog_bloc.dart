import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';

part 'new_edit_dialog_event.dart';
part 'new_edit_dialog_state.dart';

class NewEditDialogBloc extends Bloc<NewEditDialogEvent, NewEditDialogState> {
  final StudentData newModel;
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
      SubmittedClickedEvent event, Emitter<NewEditDialogState> emit) async{
    final Map<String, String?> newData = {
      'name': event.newStudent!.name,
      'age': event.newStudent!.age.toString(),
      'department': event.newStudent!.department,
      'phoneNumber': event.newStudent!.phoneNumber,
      'email': event.newStudent!.email,
      'profilePath': event.newStudent!.profilePath
    };
    await FirebaseDatabase.instance
        .ref()
        .child('students')
        .push()
        .set(newData);
    emit(SubmittedState(newModel: event.newStudent!));
  }
}
