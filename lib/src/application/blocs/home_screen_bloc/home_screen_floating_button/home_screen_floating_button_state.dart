part of 'home_screen_floating_button_bloc.dart';

@immutable
sealed class HomeScreenFloatingButtonState  extends HomeScreenBlocState{
  HomeScreenFloatingButtonState({required super.listOfStudents});
}

final class HomeScreenFloatingButtonInitial extends HomeScreenFloatingButtonState {
  HomeScreenFloatingButtonInitial({required super.listOfStudents});
}

final class AddClickedState extends HomeScreenFloatingButtonState{
  AddClickedState({required super.listOfStudents});
}