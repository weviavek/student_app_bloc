part of 'home_screen_bloc_bloc.dart';

class HomeScreenBlocState {
  HomeScreenBlocState();
}

final class HomeScreenInitialState extends HomeScreenBlocState {}

final class HomeScreenSuccessState extends HomeScreenBlocState {
  final List<StudentModel> listOfStudents;
  HomeScreenSuccessState({required this.listOfStudents});
}

final class HomeScreenErrorState extends HomeScreenBlocState {}
