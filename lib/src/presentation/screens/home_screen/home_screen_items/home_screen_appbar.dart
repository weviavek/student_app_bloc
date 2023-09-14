import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('List of Students'),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
      ],
    );
  }
}
