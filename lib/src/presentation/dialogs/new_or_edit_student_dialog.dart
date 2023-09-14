import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:student_app_bloc/src/constants/constant_values.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';
import 'package:student_app_bloc/src/presentation/dialogs/dialog_content.dart';

class NewAndEditDialog {
  final StudentModel? currentStudentData;

  NewAndEditDialog({required this.currentStudentData});
  showDialog(BuildContext context, bool isEditMode) {
    String imagePath = currentStudentData == null
        ? defaultImagePath
        : currentStudentData!.profilePath!;
    material.showDialog(
      context: context,
      builder: (context) => material.AlertDialog(
        title: const Text("Please Fill Up Following Details"),
        content: DialogContent.show(imagePath, isEditMode),
        actions: [
          material.TextButton(onPressed: () {}, child: const Text("Cancel")),
          material.TextButton(onPressed: () {}, child: const Text("Clear")),
          material.ElevatedButton(onPressed: () {}, child: const Text("Submit"))
        ],
      ),
    );
  }
}
