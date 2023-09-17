import 'package:flutter/material.dart';
import 'package:student_app_bloc/src/presentation/widgets/profile_picture_selector.dart';

import '../widgets/text_field.dart';

class DialogContent extends StatelessWidget {
  final String? imagePath;
  final bool isEditMode;
  const DialogContent(
      {super.key, required this.imagePath, required this.isEditMode});

  @override
  Widget build(BuildContext context) {
    final contollers = List<TextEditingController>.generate(
        5, (index) => TextEditingController());
    final formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ProfilePicture.show(imagePath, isEditMode),
              CustomTextField(
                currentField: 'Enter Name',
                currentController: contollers[0],
              ),
              CustomTextField(
                  currentField: 'Enter Age', currentController: contollers[1]),
              CustomTextField(
                  currentField: 'Enter Department',
                  currentController: contollers[2]),
              CustomTextField(
                  currentField: 'Enter Phone Number',
                  currentController: contollers[3]),
              CustomTextField(
                  currentField: 'Enter Email ID',
                  currentController: contollers[4]),
              Row(
                children: [
                  TextButton(onPressed: () {}, child: const Text("Cancel")),
                  const Spacer(),
                  TextButton(onPressed: () {}, child: const Text("Clear")),
                  ElevatedButton(onPressed: () {}, child: const Text("Submit"))
                ],
              )
            ],
          )),
    );
  }
}
