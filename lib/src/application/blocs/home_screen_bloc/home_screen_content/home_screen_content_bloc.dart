import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_content_event.dart';
part 'home_screen_content_state.dart';

class HomeScreenContentBloc
    extends Bloc<HomeScreenContentEvent, HomeScreenContentState> {
  HomeScreenContentBloc() : super(HomeScreenContentInitial()) {
    on<EditClickedEvent>(openEditDialog);
    on<DeleteClickedEvent>(openDeleteDialog);
  }

  FutureOr<void> openEditDialog(
      EditClickedEvent event, Emitter<HomeScreenContentState> emit) {
    emit(EditClickedState());
  }

  FutureOr<void> openDeleteDialog(
      DeleteClickedEvent event, Emitter<HomeScreenContentState> emit) {
    emit(DeleteClickedState());
  }
}
