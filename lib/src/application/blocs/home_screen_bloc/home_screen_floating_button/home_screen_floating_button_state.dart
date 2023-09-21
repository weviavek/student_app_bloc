part of 'home_screen_floating_button_bloc.dart';

@immutable
sealed class HomeScreenFloatingButtonState extends HomeScreenBlocState {}

final class HomeScreenFloatingButtonInitial
    extends HomeScreenFloatingButtonState {}

final class AddClickedState extends HomeScreenFloatingButtonState {}
