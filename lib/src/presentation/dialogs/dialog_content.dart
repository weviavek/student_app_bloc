import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/new_edit_dialog_bloc/new_edit_dialog_bloc.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';
import 'package:student_app_bloc/src/presentation/widgets/profile_picture_selector.dart';

import '../widgets/text_field.dart';

class DialogContent extends StatelessWidget {
  final StudentModel? currentModel;
  final bool isEditMode;
  const DialogContent(
      {super.key, required this.currentModel, required this.isEditMode});

  @override
  Widget build(BuildContext context) {
    NewEditDialogBloc newEditDialogBloc =
        BlocProvider.of<NewEditDialogBloc>(context);
    final contollers = List<TextEditingController>.generate(
        5, (index) => TextEditingController());
    final formKey = GlobalKey<FormState>();
    if (isEditMode) {
      contollers[0].text = currentModel!.studentData.name!;
      contollers[1].text = currentModel!.studentData.age!.toString();
      contollers[2].text = currentModel!.studentData.department!;
      contollers[3].text = currentModel!.studentData.phoneNumber!;
      contollers[4].text = currentModel!.studentData.email!;
    }
    return BlocConsumer<NewEditDialogBloc, NewEditDialogState>(
      bloc: newEditDialogBloc,
      listener: (context, state) {
        if (state is FieldClearedState) {
          for (final current in contollers) {
            current.clear();
          }
        }
        if (state is CancelledState) {
          Navigator.pop(context);
        }
        if (state is SubmittedState) {}
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProfilePicture(
                      imagePath: currentModel?.studentData.profilePath,
                      isEditMode: isEditMode),
                  CustomTextField(
                    currentType: TextInputType.name,
                    currentField: 'Enter Name',
                    currentController: contollers[0],
                  ),
                  CustomTextField(
                      currentType: TextInputType.number,
                      currentField: 'Enter Age',
                      currentController: contollers[1]),
                  CustomTextField(
                      currentField: 'Enter Department',
                      currentController: contollers[2]),
                  CustomTextField(
                      currentType: TextInputType.phone,
                      currentField: 'Enter Phone Number',
                      currentController: contollers[3]),
                  CustomTextField(
                      currentType: TextInputType.emailAddress,
                      currentField: 'Enter Email ID',
                      currentController: contollers[4]),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            newEditDialogBloc.add(const CancelledEvent());
                          },
                          child: const Text("Cancel")),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            newEditDialogBloc.add(const ClearedClickedEvent());
                          },
                          child: const Text("Clear")),
                      ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              newEditDialogBloc.add(SubmittedClickedEvent(
                                  newStudent: StudentData(
                                      name: contollers[0].text,
                                      age:
                                          int.tryParse(contollers[1].text) ?? 0,
                                      department: contollers[2].text,
                                      phoneNumber: contollers[3].text,
                                      email: contollers[4].text,
                                      profilePath: null)));
                            }
                          },
                          child: const Text("Submit"))
                    ],
                  )
                ],
              )),
        );
      },
    );
  }
}
