part of 'post_bloc.dart';

sealed class PostState {}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostSuccess extends PostState {
  final List<Post> post;

  PostSuccess({required this.post});
}

class PostError extends PostState {}
