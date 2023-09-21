part of 'home_screen_bloc_bloc.dart';

@immutable
sealed class HomeScreenBlocEvent {
  const HomeScreenBlocEvent();
}

class HomeScreenInitialEvent extends HomeScreenBlocEvent {
  const HomeScreenInitialEvent();
}

class HomeScreenSuccessEvent extends HomeScreenBlocEvent {
  final List<StudentModel> listOfStudents;
  const HomeScreenSuccessEvent({required this.listOfStudents});
}
