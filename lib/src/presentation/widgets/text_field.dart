import 'package:flutter/material.dart';

import '../../application/validators/validators.dart';

class CustomTextField extends StatelessWidget {
  final String currentField;
  const CustomTextField({super.key, required this.currentField});

  @override
  Widget build(BuildContext context) {
    TextEditingController currentContoller = TextEditingController();
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => Validator.validate(value, currentField),
      controller: currentContoller,
      decoration:
          InputDecoration(hintText: currentField, labelText: currentField),
    );
  }
}
