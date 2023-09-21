part of 'new_edit_dialog_bloc.dart';

class NewEditDialogState {
  final StudentData? currentModel;

  const NewEditDialogState({this.currentModel});
}

final class NewEditDialogInitial extends NewEditDialogState {}

final class FieldClearedState extends NewEditDialogState {}

final class CancelledState extends NewEditDialogState {}

final class SubmittedState extends NewEditDialogState {
  final StudentData newModel;

  SubmittedState({super.currentModel, required this.newModel});
}
