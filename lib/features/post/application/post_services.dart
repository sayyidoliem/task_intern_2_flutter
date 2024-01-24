import 'dart:convert';

import 'package:task_intern_2_flutter/features/post/data/post_repositories.dart';
import 'package:task_intern_2_flutter/features/post/domain/post.dart';
import 'package:http/http.dart' as http;

class PostRemoteService implements PostRepositories {
  String baseUrl = 'https://jsonplaceholder.typicode.com';
  Future<List<Post>> fetchPost() async {
    try {
      final postResponse = await http.get(Uri.parse('$baseUrl/posts'));
      final postBody = postResponse.body;
      final postResult = jsonDecode(postBody);
      List<Post> postList =
          List.from(postResult.map((posts) => Post.fromJson(posts)));
      return postList;
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
