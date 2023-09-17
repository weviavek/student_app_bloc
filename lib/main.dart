import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_content/home_screen_content_bloc.dart';
import 'package:student_app_bloc/src/application/blocs/home_screen_bloc/home_screen_floating_button/home_screen_floating_button_bloc.dart';

import 'src/application/blocs/home_screen_bloc/home_screen_appbar/home_screen_appbar_bloc.dart';
import 'src/data/services/firebase_options.dart';
import 'src/presentation/screens/home_screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeScreenAppbarBloc>(
          create: (context) => HomeScreenAppbarBloc(),
        ),
        BlocProvider<HomeScreenFloatingButtonBloc>(
          create: (context) => HomeScreenFloatingButtonBloc(),
        ),
        BlocProvider<HomeScreenContentBloc>(
          create: (context) => HomeScreenContentBloc(),
        )
      ],
      child:  MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
