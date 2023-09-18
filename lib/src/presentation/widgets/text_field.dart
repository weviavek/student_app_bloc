import 'package:flutter/material.dart';

import '../../application/validators/validators.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? currentType;
  final String currentField;
  final TextEditingController currentController;
  const CustomTextField(
      {super.key, required this.currentField, required this.currentController,this.currentType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: currentType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => Validator.validate(value, currentField),
      controller: currentController,
      decoration:
          InputDecoration(hintText: currentField, labelText: currentField),
    );
  }
}
