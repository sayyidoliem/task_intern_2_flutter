import 'package:task_intern_2_flutter/features/comment/domain/comment.dart';

abstract class CommentRepositories {
  Future<List<Comment>> fetchComment();
}