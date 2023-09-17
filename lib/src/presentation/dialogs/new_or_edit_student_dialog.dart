import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';
import 'package:student_app_bloc/src/presentation/dialogs/dialog_content.dart';

class NewAndEditDialog {
  final StudentModel? currentStudentData;

  NewAndEditDialog({required this.currentStudentData});
  showDialog(BuildContext context, bool isEditMode) {
    String? imagePath = currentStudentData == null
        ? null
        : currentStudentData!.profilePath!;
    material.showDialog(
      context: context,
      builder: (context) => material.AlertDialog(
        title: const Text("Please Fill Up Following Details"),
        content: DialogContent(imagePath: imagePath, isEditMode: isEditMode,),
      ),
    );
  }
}
