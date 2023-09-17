import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_content/home_screen_content_bloc.dart';

import '../../../../data/model/student_model.dart';

class HomeScreenBody extends StatelessWidget {
  final List<StudentModel?> listOfStudents;
  const HomeScreenBody({super.key, required this.listOfStudents});
  @override
  Widget build(BuildContext context) {
    final homeScreenContentBloc =
        BlocProvider.of<HomeScreenContentBloc>(context);
    return BlocConsumer<HomeScreenContentBloc, HomeScreenContentState>(
      bloc: homeScreenContentBloc,
      listener: (context, state) {
        if (state is DeleteClickedState) {
          print("Delete Clicked");
        }
        if (state is EditClickedState) {
          print("Edit Clicked");
        }
      },
      builder: (context, state) {
        return ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  trailing: PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text("Edit Details"),
                        onTap: () =>
                            homeScreenContentBloc.add(EditClickedEvent()),
                      ),
                      PopupMenuItem(
                        child: const Text("Remove form database"),
                        onTap: () =>
                            homeScreenContentBloc.add(DeleteClickedEvent()),
                      )
                    ],
                  ),
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: listOfStudents.length);
      },
    );
  }
}
