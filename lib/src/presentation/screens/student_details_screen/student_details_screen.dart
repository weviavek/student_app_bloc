import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/studate_deatails_screen_bloc/student_details_bloc.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';
import 'package:student_app_bloc/src/presentation/widgets/custom_text_box.dart';
import 'package:student_app_bloc/src/presentation/widgets/profile_picture_selector.dart';

import '../../../application/blocs/home_screen_bloc/home_screen_bloc_bloc.dart';
import '../../dialogs/new_or_edit_student_dialog.dart';

class StudentDetails extends StatelessWidget {
  const StudentDetails({super.key, required this.currentStudent});

  final StudentModel currentStudent;

  @override
  Widget build(BuildContext context) {
    StudentDetailsBloc studentDetailsBloc = StudentDetailsBloc();
    return BlocConsumer<StudentDetailsBloc, StudentDetailsState>(
      bloc: studentDetailsBloc,
      listener: (context, state) {
        if (state is DeleteClickedState) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back)),
              actions: [
                IconButton(
                    onPressed: () => studentDetailsBloc.add(
                        StudentDeleteClickedEvent(key: currentStudent.key)),
                    icon: const Icon(Icons.delete))
              ],
            ),
            body: ListView(
              children: [
                ProfilePicture(
                  isEditMode: false,
                  imagePath: currentStudent.studentData.profilePath,
                ),
                CustomTextBox(
                    availableWidth: MediaQuery.sizeOf(context).width,
                    itemCaption: "Student Name",
                    item: currentStudent.studentData.name!),
                CustomTextBox(
                    availableWidth: MediaQuery.sizeOf(context).width,
                    itemCaption: "Age",
                    item: currentStudent.studentData.age!.toString()),
                CustomTextBox(
                    availableWidth: MediaQuery.sizeOf(context).width,
                    itemCaption: "Department",
                    item: currentStudent.studentData.department!),
                CustomTextBox(
                    availableWidth: MediaQuery.sizeOf(context).width,
                    itemCaption: "Email ID",
                    item: currentStudent.studentData.email!),
                CustomTextBox(
                    availableWidth: MediaQuery.sizeOf(context).width,
                    itemCaption: "Phone Number",
                    item: currentStudent.studentData.phoneNumber!)
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                 NewAndEditDialog(
                  homeScreenBlocBloc:
                      BlocProvider.of<HomeScreenBlocBloc>(context),
                  currentStudentModel: currentStudent)
              .showDialog(context, true);
              },
              child: const Icon(Icons.edit),
            ),
          ),
        );
      },
    );
  }
}
