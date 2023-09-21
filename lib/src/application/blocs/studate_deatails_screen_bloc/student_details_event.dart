part of 'student_details_bloc.dart';

@immutable
sealed class StudentDetailsEvent {
  final String key;
  const StudentDetailsEvent({required this.key});
}

final class StudentEditClickedEvent extends StudentDetailsEvent {
  const StudentEditClickedEvent({required super.key});
}

final class StudentDeleteClickedEvent extends StudentDetailsEvent {
  const StudentDeleteClickedEvent({required super.key});
}
