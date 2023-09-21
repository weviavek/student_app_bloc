part of 'home_screen_appbar_bloc.dart';

@immutable
sealed class HomeScreenAppbarState extends HomeScreenBlocState {
  final List<StudentModel> listOfStudents;

  HomeScreenAppbarState({required this.listOfStudents});
}

final class SearchClickedState extends HomeScreenAppbarState {
  SearchClickedState({required super.listOfStudents});
}
