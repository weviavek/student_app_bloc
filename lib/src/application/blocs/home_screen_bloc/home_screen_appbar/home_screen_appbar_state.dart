part of 'home_screen_appbar_bloc.dart';

@immutable
sealed class HomeScreenAppbarState  extends HomeScreenBlocState {
  HomeScreenAppbarState({required super.listOfStudents});
  
}

final class HomeScreenAppbarInitial extends HomeScreenAppbarState {
  HomeScreenAppbarInitial({required super.listOfStudents});
}

final class SearchClickedState extends HomeScreenAppbarState{
  SearchClickedState({required super.listOfStudents});
}