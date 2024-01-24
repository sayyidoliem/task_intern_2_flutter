import 'package:task_intern_2_flutter/import.dart';

part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final CommentRemoteService commentService;
  CommentBloc({required this.commentService}) : super(CommentInitial()) {
    on<GetCommentEvent>(
      (event, emit) async {
        emit(CommentLoading());
        await Future.delayed(const Duration(seconds: 3));
        try {
          final response = await commentService.fetchComment();
          emit(CommentSuccess(response));
        } catch (e) {
          emit(CommentError());
        }
      },
    );
  }
}
