import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_appbar_event.dart';
part 'home_screen_appbar_state.dart';

class HomeScreenAppbarBloc
    extends Bloc<HomeScreenAppbarEvent, HomeScreenAppbarState> {
  HomeScreenAppbarBloc() : super(HomeScreenAppbarInitial()) {
    on<HomeScreenAppbarEvent>(homeScreenToSearchPageNavigate);
  }

  FutureOr<void> homeScreenToSearchPageNavigate(
      HomeScreenAppbarEvent event, Emitter<HomeScreenAppbarState> emit) {
    emit(SearchClickedState());
  }
}
