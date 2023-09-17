import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_content_event.dart';
part 'home_screen_content_state.dart';

class HomeScreenContentBloc extends Bloc<HomeScreenContentEvent, HomeScreenContentState> {
  HomeScreenContentBloc() : super(HomeScreenContentInitial()) {
    on<HomeScreenContentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
