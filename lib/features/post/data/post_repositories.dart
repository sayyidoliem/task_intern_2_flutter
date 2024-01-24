import 'package:task_intern_2_flutter/features/post/domain/post.dart';

abstract class PostRepositories {
  Future<List<Post>> fetchPost();
}
