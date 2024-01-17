import 'package:task_intern_2_flutter/screen.dart';
import 'package:http/http.dart' as http;
part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<PostEvent>((event, emit) async {
      emit(PostLoading());
      await Future.delayed(const Duration(seconds: 3));
      try {
        final response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
        emit(PostSuccess(post: postFromJson(response.body)));
      } catch (e) {
        emit(PostError());
      }
    });
  }
}
