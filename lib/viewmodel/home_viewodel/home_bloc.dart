import 'package:task_intern_2_flutter/import.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial(tabIndex: 0)) {
    on<HomeEvent>((event, emit) {
      if (event is ChangeTab) {
        emit(HomeInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
