import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/blocs/new_edit_dialog_bloc/new_edit_dialog_bloc.dart';

class SearchScreen extends StatelessWidget {
  final NewEditDialogState states;
  const SearchScreen({super.key,required this.states});

  @override
  Widget build(BuildContext context) {
    final temp = BlocProvider.of<NewEditDialogBloc>(context);
    return BlocConsumer<NewEditDialogBloc, NewEditDialogState>(
      bloc: temp,
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
          body: Center(
            child: ElevatedButton(
                onPressed: () {
                },
                child:const Text("Text")),
          ),
        ));
      },
    );
  }
}
