import 'package:task_intern_2_flutter/import.dart';
part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostService postService;
  PostBloc({required this.postService}) : super(PostInitial()) {
    on<PostEvent>((event, emit) async {
      emit(PostLoading());
      await Future.delayed(const Duration(seconds: 3));
      try {
        final response = await postService.fetchPost();
        emit(PostSuccess(response));
      } catch (e) {
        emit(PostError());
      }
    });
  }
}
