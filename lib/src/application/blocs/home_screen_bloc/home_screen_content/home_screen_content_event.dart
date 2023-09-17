part of 'home_screen_content_bloc.dart';

@immutable
sealed class HomeScreenContentEvent {}

final class StudentClickedEvent extends HomeScreenContentEvent {}

final class OpentionClickedEvent extends HomeScreenContentEvent {}
final class DeleteClickedEvent extends HomeScreenContentEvent {}
final class EditClickedEvent extends HomeScreenContentEvent {}