part of 'home_screen_appbar_bloc.dart';

@immutable
sealed class HomeScreenAppbarEvent {}

final class SearchClickedEvent extends HomeScreenAppbarEvent {} 