import 'dart:convert';
import 'package:task_intern_2_flutter/features/comment/data/comment_repositories.dart';
import 'package:task_intern_2_flutter/features/comment/domain/comment.dart';
import 'package:http/http.dart' as http;

class CommentRemoteService implements CommentRepositories {
  String baseUrl = 'https://jsonplaceholder.typicode.com';
  @override
  Future<List<Comment>> fetchComment() async {
    try {
      final commentResponse = await http.get(Uri.parse('$baseUrl/comments'));
      final commentBody = commentResponse.body;
      final commentResult = jsonDecode(commentBody);
      List<Comment> commentList =
          List.from(commentResult.map((comment) => Comment.fromJson(comment)));
      return commentList;
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
