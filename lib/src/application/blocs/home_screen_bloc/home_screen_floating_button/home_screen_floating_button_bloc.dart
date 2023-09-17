import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_screen_floating_button_event.dart';
part 'home_screen_floating_button_state.dart';

class HomeScreenFloatingButtonBloc
    extends Bloc<HomeScreenFloatingButtonEvent, HomeScreenFloatingButtonState> {
  HomeScreenFloatingButtonBloc() : super(HomeScreenFloatingButtonInitial()) {
    on<HomeScreenFloatingButtonEvent>(addclicked);
  }

  FutureOr<void> addclicked(HomeScreenFloatingButtonEvent event,
      Emitter<HomeScreenFloatingButtonState> emit) {
    emit(AddClickedState());
  }
}
