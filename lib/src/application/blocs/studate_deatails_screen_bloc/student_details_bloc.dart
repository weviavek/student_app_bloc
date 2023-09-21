import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

part 'student_details_event.dart';
part 'student_details_state.dart';

class StudentDetailsBloc
    extends Bloc<StudentDetailsEvent, StudentDetailsState> {
  StudentDetailsBloc() : super(StudentDetailsInitial()) {
    on<StudentDeleteClickedEvent>(deleteStudent);
  }

  FutureOr<void> deleteStudent(
      StudentDeleteClickedEvent event, Emitter<StudentDetailsState> emit) async{
        final String key = event.key;
    final DatabaseReference databaseReference =
        FirebaseDatabase.instance.ref().child('students');
    await databaseReference.child(key).remove();
    
    emit(DeleteClickedState());
  }
}
