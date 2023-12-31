part of 'home_screen_content_bloc.dart';

@immutable
sealed class HomeScreenContentEvent {}

final class StudentClickedEvent extends HomeScreenContentEvent {
  final StudentModel clickedStudent;
  StudentClickedEvent({required this.clickedStudent});
}

final class OpentionClickedEvent extends HomeScreenContentEvent {}

final class DeleteClickedEvent extends HomeScreenContentEvent {
  final String key;

  DeleteClickedEvent({required this.key});
}

final class UpdateList extends HomeScreenContentEvent {}

final class EditClickedEvent extends HomeScreenContentEvent {}
