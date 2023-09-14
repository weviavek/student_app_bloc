import 'package:flutter/material.dart';

import '../../../../data/model/student_model.dart';

class HomeScreenBody extends StatelessWidget {
  final List<StudentModel> listOfStudents;
  const HomeScreenBody({super.key, required this.listOfStudents});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) =>const ListTile(),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: listOfStudents.length);
  }
}
