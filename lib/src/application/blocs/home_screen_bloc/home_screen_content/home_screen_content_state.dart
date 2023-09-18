part of 'home_screen_content_bloc.dart';

@immutable
sealed class HomeScreenContentState extends HomeScreenBlocState {
  HomeScreenContentState({required super.listOfStudents});
}

final class HomeScreenContentInitial extends HomeScreenContentState {
  HomeScreenContentInitial({required super.listOfStudents});
}

final class DeleteClickedState extends HomeScreenContentState{
  DeleteClickedState({required super.listOfStudents});
}
final class EditClickedState extends HomeScreenContentState{
  EditClickedState({required super.listOfStudents});
}
final class NavigateToStudentDetailesEvent extends  HomeScreenContentState{
  NavigateToStudentDetailesEvent({required super.listOfStudents});
}