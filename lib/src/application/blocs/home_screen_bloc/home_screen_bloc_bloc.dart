import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_bloc_event.dart';
part 'home_screen_bloc_state.dart';

class HomeScreenBlocBloc extends Bloc<HomeScreenBlocEvent, HomeScreenBlocState> {
  HomeScreenBlocBloc() : super(HomeScreenBlocInitial()) {
    on<HomeScreenBlocEvent>((event, emit) {
      
    });
  }
}
