part of 'home_screen_content_bloc.dart';

@immutable
sealed class HomeScreenContentState extends HomeScreenBlocState {}

final class HomeScreenContentInitial extends HomeScreenContentState {}

final class DeleteClickedState extends HomeScreenContentState {
  final List<StudentModel> listOfStudents;
  DeleteClickedState({required this.listOfStudents});
}

final class StudentClickedState extends HomeScreenContentState {
  final StudentModel clickedStudent;
  StudentClickedState({required this.clickedStudent});
}

final class EditClickedState extends HomeScreenContentState {}

