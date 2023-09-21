import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';

import '../home_screen_bloc_bloc.dart';

part 'home_screen_appbar_event.dart';
part 'home_screen_appbar_state.dart';

class HomeScreenAppbarBloc
    extends Bloc<HomeScreenAppbarEvent, HomeScreenAppbarState> {
  final List<StudentModel> listOfStudents;
  HomeScreenAppbarBloc({required this.listOfStudents}) : super(SearchClickedState(listOfStudents: listOfStudents)) {
    on<HomeScreenAppbarEvent>(homeScreenToSearchPageNavigate);
  }

  FutureOr<void> homeScreenToSearchPageNavigate(
      HomeScreenAppbarEvent event, Emitter<HomeScreenAppbarState> emit) {
    emit(SearchClickedState(listOfStudents: listOfStudents));
  }
}
