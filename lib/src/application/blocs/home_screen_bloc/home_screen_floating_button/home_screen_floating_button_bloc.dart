import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';

import '../home_screen_bloc_bloc.dart';

part 'home_screen_floating_button_event.dart';
part 'home_screen_floating_button_state.dart';

class HomeScreenFloatingButtonBloc
    extends Bloc<HomeScreenFloatingButtonEvent, HomeScreenFloatingButtonState> {
      final List<StudentModel>listOfStudents;
  HomeScreenFloatingButtonBloc({required this.listOfStudents}) : super(HomeScreenFloatingButtonInitial()) {
    on<HomeScreenFloatingButtonEvent>(addclicked);
  }

  FutureOr<void> addclicked(HomeScreenFloatingButtonEvent event,
      Emitter<HomeScreenFloatingButtonState> emit) {
    emit(AddClickedState());
  }
}
