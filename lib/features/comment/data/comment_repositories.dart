import 'package:task_intern_2_flutter/import.dart';

abstract class CommentRepositories {
  Future<List<Comment>> fetchComment();
}