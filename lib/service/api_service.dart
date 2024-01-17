import 'package:task_intern_2_flutter/import.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://jsonplaceholder.typicode.com';

class UserService {
  Future fetchPost() async {
    final postResponse = await http.get(Uri.parse('$baseUrl/posts'));
    final postBody = postResponse.body;
    final postResult = jsonDecode(postBody);
    List<Post> postList =
        List.from(postResult.map((posts) => Post.fromJson(posts)));
    return postList;
  }
}

class PostService {
  Future fetchPost() async {
    final postResponse = await http.get(Uri.parse('$baseUrl/posts'));
    final postBody = postResponse.body;
    final postResult = jsonDecode(postBody);
    List<Post> postList =
        List.from(postResult.map((posts) => Post.fromJson(posts)));
    return postList;
  }
}

class CommentService {
  Future fetchPost() async {
    final commentResponse = await http.get(Uri.parse('$baseUrl/comments'));
    final commentBody = commentResponse.body;
    final commentResult = jsonDecode(commentBody);
    List<Comment> commentList =
        List.from(commentResult.map((comment) => Comment.fromJson(comment)));
    return commentList;
  }
}

class AlbumService {
  Future fetchPost() async {
    final albumResponse = await http.get(Uri.parse('$baseUrl/albums'));
    final albumBody = albumResponse.body;
    final albumResult = jsonDecode(albumBody);
    List<Album> albumList =
        List.from(albumResult.map((album) => Album.fromJson(album)));
    return albumList;
  }
}
