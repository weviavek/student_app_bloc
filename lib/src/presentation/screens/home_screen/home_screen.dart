import 'package:flutter/material.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';
import 'package:student_app_bloc/src/presentation/screens/home_screen/home_screen_items/home_screen_appbar.dart';
import 'package:student_app_bloc/src/presentation/screens/home_screen/home_screen_items/home_screen_body.dart';
import 'package:student_app_bloc/src/presentation/screens/home_screen/home_screen_items/home_screen_floating_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const PreferredSize(
                preferredSize: Size.fromHeight(50), child: HomeScreenAppBar()),
            body: HomeScreenBody(
              listOfStudents: List<StudentModel>.generate(
                  12,
                  (index) => StudentModel(
                      name: null,
                      age: null,
                      department: null,
                      phoneNumber: null,
                      email: null,
                      profilePath: null)),
            ),
            floatingActionButton: const HomeScreenFloatingButton()));
  }
}
