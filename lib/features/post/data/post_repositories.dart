import 'package:task_intern_2_flutter/import.dart';

abstract class PostRepositories {
  Future<List<Post>> fetchPost();
}
