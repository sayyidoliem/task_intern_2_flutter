import 'package:task_intern_2_flutter/import.dart';

abstract class UserRepositories {
  Future<List<User>> fetchUser();
}