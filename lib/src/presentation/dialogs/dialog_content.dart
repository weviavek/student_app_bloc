import 'package:flutter/material.dart';
import 'package:student_app_bloc/src/presentation/widgets/profile_picture_selector.dart';

import '../widgets/text_field.dart';

class DialogContent {
  static Widget show(String? imagePath, bool isEditMode) {
    
    final formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Form(
        key: formKey,
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfilePicture.show(imagePath, isEditMode),
          const CustomTextField(currentField:'Enter Name'),
          const CustomTextField(currentField:'Enter Age'),
          const CustomTextField(currentField:'Enter Department'),
          const CustomTextField(currentField:'Enter Phone Number'),
          const CustomTextField(currentField:'Enter Email ID')
        ],
      )),
    );
  }
}
