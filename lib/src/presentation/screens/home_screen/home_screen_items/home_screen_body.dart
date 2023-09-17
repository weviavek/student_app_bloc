import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_bloc_bloc.dart';

import '../../../../application/blocs/home_screen_bloc/home_screen_content/bloc/home_screen_content_bloc.dart';
import '../../../../data/model/student_model.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final homeScreenBloc = BlocProvider.of<HomeScreenContentBloc>(context);
    return BlocConsumer<HomeScreenContentBloc, HomeScreenContentState>(
      bloc: homeScreenBloc,
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  onTap: () => homeScreenBloc.add(StudentClickedEvent()),
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 6);
      },
    );
  }
}
