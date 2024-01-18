import 'package:task_intern_2_flutter/import.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserService userService;
  UserBloc({required this.userService}) : super(UserInitial()) {
    on<GetUserEvent>(
      (event, emit) async {
        emit(UserLoading());
        await Future.delayed(const Duration(seconds: 3));
        try {
          final response = await userService.fetchUser();
          emit(UserSuccess(response));
        } catch (e) {
          emit(UserError());
        }
      },
    );
  }
}
