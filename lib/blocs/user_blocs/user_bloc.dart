import 'package:task_intern_2_flutter/screen.dart';
import 'package:http/http.dart' as http;
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<GetUserEvent>((event, emit) async {
      emit(UserLoading());
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      emit(UserSuccess(users: userFromJson(response.body)));
    });
  }
}
