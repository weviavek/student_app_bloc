import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_bloc_bloc.dart';
import 'package:student_app_bloc/src/presentation/screens/home_screen/home_screen_items/home_screen_appbar.dart';
import 'package:student_app_bloc/src/presentation/screens/home_screen/home_screen_items/home_screen_body.dart';
import 'package:student_app_bloc/src/presentation/screens/home_screen/home_screen_items/home_screen_floating_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeScreenBlocBloc, HomeScreenBlocState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
                appBar: const PreferredSize(
                    preferredSize: Size.fromHeight(50),
                    child: HomeScreenAppBar()),
                body: HomeScreenBody(),
                floatingActionButton: const HomeScreenFloatingButton()));
      },
    );
  }
}
