import 'package:flutter/material.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';

class SearchScreen extends StatelessWidget {
  final List<StudentModel> listOfStudents;
  const SearchScreen({super.key, required this.listOfStudents});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {}, child: const Text("Text")),
      ),
    ));
  }
}
