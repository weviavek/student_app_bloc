import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';

part 'home_screen_bloc_event.dart';
part 'home_screen_bloc_state.dart';

class HomeScreenBlocBloc
    extends Bloc<HomeScreenBlocEvent, HomeScreenBlocState> {
  HomeScreenBlocBloc() : super(HomeScreenInitialState()) {
    on<HomeScreenInitialEvent>(homeScreenInitialEvent);
    on<HomeScreenSuccessEvent>(homeScreenSuccessEvent);
  }

  FutureOr<void> homeScreenInitialEvent(
      HomeScreenInitialEvent event, Emitter<HomeScreenBlocState> emit) async {
    emit(HomeScreenInitialState());
    final List<StudentModel> listOfStudents = [];
    final temp = FirebaseDatabase.instance.ref();
    temp.child("students").onChildAdded.listen((data) {
      StudentModel currentModel = StudentModel(
          key: data.snapshot.key!,
          studentData: StudentData.fromJson(data.snapshot.value as Map));
      listOfStudents.add(currentModel);
    });
    await Future.delayed(const Duration(seconds: 2));
    emit(HomeScreenSuccessState(listOfStudents: listOfStudents));
  }

  FutureOr<void> homeScreenSuccessEvent(
      HomeScreenSuccessEvent event, Emitter<HomeScreenBlocState> emit) {
    emit(HomeScreenSuccessState(listOfStudents: event.listOfStudents));
  }
}
