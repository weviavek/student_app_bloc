import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_bloc_bloc.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';

part 'home_screen_content_event.dart';
part 'home_screen_content_state.dart';

class HomeScreenContentBloc
    extends Bloc<HomeScreenContentEvent, HomeScreenContentState> {
  final List<StudentModel> listOfStudents;
  HomeScreenContentBloc({required this.listOfStudents})
      : super(HomeScreenContentInitial()) {
    on<EditClickedEvent>(openEditDialog);
    on<DeleteClickedEvent>(openDeleteDialog);
    on<StudentClickedEvent>(openStudentDetails);
  }

  FutureOr<void> openEditDialog(
      EditClickedEvent event, Emitter<HomeScreenContentState> emit) {
    emit(EditClickedState());
  }

  FutureOr<void> openDeleteDialog(
      DeleteClickedEvent event, Emitter<HomeScreenContentState> emit) async {
    final String key = event.key;
    final DatabaseReference databaseReference =
        FirebaseDatabase.instance.ref().child('students');
    await databaseReference.child(key).remove();
    
    listOfStudents.removeWhere((element) => element.key == key);
    emit(DeleteClickedState(listOfStudents: listOfStudents));
  }

  FutureOr<void> openStudentDetails(
      StudentClickedEvent event, Emitter<HomeScreenContentState> emit) {
    emit(StudentClickedState(clickedStudent: event.clickedStudent));
  }
}
