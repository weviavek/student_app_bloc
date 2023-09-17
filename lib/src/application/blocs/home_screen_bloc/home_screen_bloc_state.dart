part of 'home_screen_bloc_bloc.dart';

@immutable
sealed class HomeScreenBlocState {}

final class HomeScreenBlocInitial extends HomeScreenBlocState {}

final class HomeScreenSuccessState extends HomeScreenBlocState {}
final class HomeScreenErrorState extends HomeScreenBlocState {}
