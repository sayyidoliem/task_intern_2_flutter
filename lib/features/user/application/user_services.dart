import 'package:http/http.dart' as http;
import 'package:task_intern_2_flutter/import.dart';

class UserRemoteService implements UserRepositories {
  String baseUrl = 'https://jsonplaceholder.typicode.com';
  Future<List<User>> fetchUser() async {
    try {
      final userResponse = await http.get(Uri.parse('$baseUrl/users'));
      final userBody = userResponse.body;
      final userResult = jsonDecode(userBody);
      List<User> userList = [];
      for (Map<String, dynamic> i in userResult) {
        userList.add(User.fromJson(i));
      }
      return userList;
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
