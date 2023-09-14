import 'package:flutter/material.dart';
import 'package:student_app_bloc/src/presentation/dialogs/new_or_edit_student_dialog.dart';

class HomeScreenFloatingButton extends StatelessWidget {
  const HomeScreenFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        NewAndEditDialog(currentStudentData: null).showDialog(context, false);
      },
      child: const Icon(Icons.person_add_outlined),
    );
  }
}
