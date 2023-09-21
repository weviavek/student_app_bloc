part of 'home_screen_appbar_bloc.dart';

@immutable
sealed class HomeScreenAppbarState extends HomeScreenBlocState {}

final class HomeScreenAppbarInitial extends HomeScreenAppbarState {}

final class SearchClickedState extends HomeScreenAppbarState {}
