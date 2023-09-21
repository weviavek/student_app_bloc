import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_bloc_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_floating_button/home_screen_floating_button_bloc.dart';
import 'package:student_app_bloc/src/presentation/dialogs/new_or_edit_student_dialog.dart';

class HomeScreenFloatingButton extends StatelessWidget {
  final HomeScreenBlocBloc homeScreenBlocBloc;
  const HomeScreenFloatingButton({required this.homeScreenBlocBloc, super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenFloatingButtonBloc homeScreenFloatingButtonBloc =
        BlocProvider.of<HomeScreenFloatingButtonBloc>(context);
    return BlocConsumer<HomeScreenFloatingButtonBloc,
        HomeScreenFloatingButtonState>(
      listener: (context, state) {
        if (state is AddClickedState) {
          NewAndEditDialog(
                  homeScreenBlocBloc:
                      BlocProvider.of<HomeScreenBlocBloc>(context),
                  currentStudentModel: null)
              .showDialog(context, false);
        }
      },
      builder: (context, state) {
        return FloatingActionButton(
          onPressed: () {
            homeScreenFloatingButtonBloc.add(AddClickedEvent());
          },
          child: const Icon(Icons.person_add_outlined),
        );
      },
    );
  }
}
