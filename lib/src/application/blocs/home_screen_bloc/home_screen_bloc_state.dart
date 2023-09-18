part of 'home_screen_bloc_bloc.dart';

class HomeScreenBlocState {
  final List<StudentModel> listOfStudents;
  HomeScreenBlocState({required this.listOfStudents});
}

final class HomeScreenBlocInitial extends HomeScreenBlocState {
  HomeScreenBlocInitial({required super.listOfStudents});
}

final class HomeScreenSuccessState extends HomeScreenBlocState {
  HomeScreenSuccessState({required super.listOfStudents});
}

final class HomeScreenErrorState extends HomeScreenBlocState {
  HomeScreenErrorState({required super.listOfStudents});
}
