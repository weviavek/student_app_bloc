import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';
import 'package:student_app_bloc/src/presentation/dialogs/dialog_content.dart';

import '../../application/blocs/new_edit_dialog_bloc/new_edit_dialog_bloc.dart';

class NewAndEditDialog {
  final StudentData? currentStudentData;

  NewAndEditDialog({required this.currentStudentData});
  showDialog(BuildContext context, bool isEditMode) {
    String? imagePath =
        currentStudentData == null ? null : currentStudentData!.profilePath!;
    material.showDialog(
      context: context,
      builder: (context) => material.AlertDialog(
        title: const Text("Please Fill Up Following Details"),
        content: BlocProvider<NewEditDialogBloc>(
          create: (context) => NewEditDialogBloc(
            newModel: StudentData(
                name: null,
                age: null,
                department: null,
                phoneNumber: null,
                email: null,
                profilePath: null),
          ),
          child: DialogContent(
            imagePath: imagePath,
            isEditMode: isEditMode,
          ),
        ),
      ),
    );
  }
}
