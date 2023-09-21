part of 'new_edit_dialog_bloc.dart';

@immutable
sealed class NewEditDialogEvent {
  final StudentData? currentModel;
  const NewEditDialogEvent( {this.currentModel,});
}

final class CancelledEvent extends NewEditDialogEvent {
  const CancelledEvent( {super.currentModel,});
}

final class ClearedClickedEvent extends NewEditDialogEvent {
  const ClearedClickedEvent( {super.currentModel});
}

final class SubmittedClickedEvent extends NewEditDialogEvent {
  final StudentData? newStudent;
  const SubmittedClickedEvent( {
     required this.newStudent
  });
}
