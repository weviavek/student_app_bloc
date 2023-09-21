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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenBlocBloc homeScreenBlocState = HomeScreenBlocBloc();
  @override
  void initState() {
    homeScreenBlocState.add(const HomeScreenInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: BlocConsumer<HomeScreenBlocBloc, HomeScreenBlocState>(
        bloc: homeScreenBlocState,
        buildWhen: (previous, current) => current is !HomeScreenInitialState,
        listenWhen: (previous, current) => true,
        listener: (context, state) {
          print("______________________________${state.runtimeType}");
        },
        builder: (context, state) {
          print(state.runtimeType);
          if (state is HomeScreenSuccessState) {
            List<StudentModel> listOfStudents = state.listOfStudents;
            return MultiBlocProvider(
              providers: [
                BlocProvider<HomeScreenAppbarBloc>(
                  create: (context) =>
                      HomeScreenAppbarBloc(listOfStudents: listOfStudents),
                ),
                BlocProvider<HomeScreenFloatingButtonBloc>(
                  create: (context) => HomeScreenFloatingButtonBloc(
                      listOfStudents: listOfStudents),
                ),
                BlocProvider<HomeScreenContentBloc>(
                  create: (context) =>
                      HomeScreenContentBloc(listOfStudents: listOfStudents),
                )
              ],
              child: Scaffold(
                appBar: const PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: HomeScreenAppBar(),
                ),
                body: HomeScreenBody(listOfStudents: listOfStudents),
                floatingActionButton: const HomeScreenFloatingButton(),
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
