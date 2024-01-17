part of 'comment_bloc.dart';

sealed class CommentState {}

class CommentInitial extends CommentState {}

class CommentLoading extends CommentState {}

class CommentSuccess extends CommentState {
  final List<Comment> comment;

  CommentSuccess({required this.comment});
}

class CommentError extends CommentState {}
