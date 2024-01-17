import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_intern_2_flutter/model/comment.dart';

part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  CommentBloc() : super(CommentInitial()) {
    on<CommentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
