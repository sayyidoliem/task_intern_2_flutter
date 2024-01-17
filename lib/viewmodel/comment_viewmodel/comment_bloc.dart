import 'package:bloc/bloc.dart';
import 'package:task_intern_2_flutter/import.dart';
import 'package:task_intern_2_flutter/model/comment.dart';

part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  final CommentService commentService;
  CommentBloc({required this.commentService}) : super(CommentInitial()) {
    on<CommentEvent>((event, emit) async {
      emit(CommentLoading());
      await Future.delayed(const Duration(seconds: 3));
      try {
        final response = await commentService.fetchPost();
        emit(CommentSuccess(response));
      } catch (e) {
        emit(CommentError());
      }
    });
  }
}