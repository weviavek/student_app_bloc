import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_appbar/home_screen_appbar_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/new_edit_dialog_bloc/new_edit_dialog_bloc.dart';
import 'package:student_app_bloc/src/presentation/screens/search_screen/search_screen.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final homeScreenAppbarBloc = BlocProvider.of<HomeScreenAppbarBloc>(context);

    return BlocConsumer<HomeScreenAppbarBloc, HomeScreenAppbarState>(
      listenWhen: (previous, current) => true,
      buildWhen: (previous, current) => true,
      listener: (context, state) {
        if (state is SearchClickedState) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: ((context) => SearchScreen(states: state as NewEditDialogState,))));
        }
      },
      builder: (context, state) {
        return AppBar(
          title: const Text('List of Students'),
          actions: [
            IconButton(
                onPressed: () {
                  homeScreenAppbarBloc.add(SearchClickedEvent());
                },
                icon: const Icon(Icons.search_rounded))
          ],
        );
      },
    );
  }
}
