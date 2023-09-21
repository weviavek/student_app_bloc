part of 'student_details_bloc.dart';

@immutable
sealed class StudentDetailsState {}

final class StudentDetailsInitial extends StudentDetailsState {}

final class DeleteClickedState extends StudentDetailsState{}
