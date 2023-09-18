import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:student_app_bloc/src/data/model/student_model.dart';

part 'home_screen_bloc_event.dart';
part 'home_screen_bloc_state.dart';

class HomeScreenBlocBloc extends Bloc<HomeScreenBlocEvent, HomeScreenBlocState> {
  final List<StudentModel>listOfStudents;
  HomeScreenBlocBloc({required this.listOfStudents}) : super(HomeScreenBlocInitial(listOfStudents: listOfStudents)) {
    on<HomeScreenBlocEvent>((event, emit) {
      
    });
  }
}
