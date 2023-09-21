part of 'home_screen_content_bloc.dart';

@immutable
sealed class HomeScreenContentState extends HomeScreenBlocState {}

final class HomeScreenContentInitial extends HomeScreenContentState {}

final class DeleteClickedState extends HomeScreenContentState {
  final List<StudentModel> listOfStudents;
  DeleteClickedState({required this.listOfStudents});
}

final class EditClickedState extends HomeScreenContentState {}

final class NavigateToStudentDetailesEvent extends HomeScreenContentState {}
