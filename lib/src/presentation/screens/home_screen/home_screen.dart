import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_bloc_bloc.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';
import 'package:student_app_bloc/src/presentation/screens/home_screen/home_screen_items/home_screen_appbar.dart';
import 'package:student_app_bloc/src/presentation/screens/home_screen/home_screen_items/home_screen_body.dart';
import 'package:student_app_bloc/src/presentation/screens/home_screen/home_screen_items/home_screen_floating_button.dart';

import '../../../application/blocs/home_screen_bloc/home_screen_appbar/home_screen_appbar_bloc.dart';
import '../../../application/blocs/home_screen_bloc/home_screen_content/home_screen_content_bloc.dart';
import '../../../application/blocs/home_screen_bloc/home_screen_floating_button/home_screen_floating_button_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocConsumer<HomeScreenBlocBloc, HomeScreenBlocState>(
            bloc: HomeScreenBlocBloc(listOfStudents: []),
            listener: (context, state) {},
            builder: (context, state) {
              return MultiBlocProvider(
                  providers: [
                    BlocProvider<HomeScreenAppbarBloc>(
                      create: (context) => HomeScreenAppbarBloc(
                          listOfStudents: state.listOfStudents),
                    ),
                    BlocProvider<HomeScreenFloatingButtonBloc>(
                      create: (context) => HomeScreenFloatingButtonBloc(
                          listOfStudents: state.listOfStudents),
                    ),
                    BlocProvider<HomeScreenContentBloc>(
                      create: (context) => HomeScreenContentBloc(
                          listOfStudents: state.listOfStudents),
                    ),
                  ],
                  child: Scaffold(
                      appBar: const PreferredSize(
                          preferredSize: Size.fromHeight(50),
                          child: HomeScreenAppBar()),
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
            }));
  }
}
