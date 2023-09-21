import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_bloc_bloc.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';
import 'package:student_app_bloc/src/presentation/dialogs/dialog_content.dart';

import '../../application/blocs/new_edit_dialog_bloc/new_edit_dialog_bloc.dart';

class NewAndEditDialog {
  final StudentModel? currentStudentModel;
  final HomeScreenBlocBloc homeScreenBlocBloc;

  NewAndEditDialog(
      {required this.homeScreenBlocBloc, required this.currentStudentModel});
  showDialog(BuildContext context, bool isEditMode) {
    StudentData? currentData =
        isEditMode ? currentStudentModel!.studentData : null;
    String? imagePath = currentStudentModel == null
        ? null
        : currentStudentModel!.studentData.profilePath;
    material.showDialog(
      context: context,
      builder: (context) => material.AlertDialog(
        title: const Text("Please Fill Up Following Details"),
        content: BlocProvider<NewEditDialogBloc>(
          create: (context) => NewEditDialogBloc(
            homeScreenBloc: homeScreenBlocBloc,
            newModel: StudentData(
                name: isEditMode ? currentData!.name : null,
                age: isEditMode ? currentData!.age : null,
                department: isEditMode ? currentData!.department : null,
                phoneNumber: isEditMode ? currentData!.phoneNumber : null,
                email: isEditMode ? currentData!.email : null,
                profilePath: isEditMode ? currentData!.profilePath : null),
          ),
          child: DialogContent(
            currentModel: currentStudentModel,
            isEditMode: isEditMode,
          ),
        ),
      ),
    );
  }
}
