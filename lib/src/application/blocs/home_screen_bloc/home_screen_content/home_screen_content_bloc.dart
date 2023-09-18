import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_bloc_bloc.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';

part 'home_screen_content_event.dart';
part 'home_screen_content_state.dart';

class HomeScreenContentBloc
    extends Bloc<HomeScreenContentEvent, HomeScreenContentState> {
  final List<StudentModel> listOfStudents;
  HomeScreenContentBloc({required this.listOfStudents})
      : super(HomeScreenContentInitial(listOfStudents: listOfStudents)) {
    on<EditClickedEvent>(openEditDialog);
    on<DeleteClickedEvent>(openDeleteDialog);
  }

  FutureOr<void> openEditDialog(
      EditClickedEvent event, Emitter<HomeScreenContentState> emit) {
    emit(EditClickedState(listOfStudents: listOfStudents));
  }

  FutureOr<void> openDeleteDialog(
      DeleteClickedEvent event, Emitter<HomeScreenContentState> emit) {
    emit(DeleteClickedState(listOfStudents: listOfStudents));
  }
}
