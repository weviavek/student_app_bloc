part of 'home_screen_content_bloc.dart';

@immutable
sealed class HomeScreenContentState {}

final class HomeScreenContentInitial extends HomeScreenContentState {}

final class DeleteClickedState extends HomeScreenContentState{}
final class EditClickedState extends HomeScreenContentState{}
final class NavigateToStudentDetailesEvent extends  HomeScreenContentState{}