import 'package:task_intern_2_flutter/features/album/data/album_repositories.dart';
import 'package:task_intern_2_flutter/import.dart';
import 'package:http/http.dart' as http;

class AlbumRemoteService implements AlbumRepositories {
  String baseUrl = 'https://jsonplaceholder.typicode.com';
  @override
  Future<List<Album>> fetchAlbum() async {
    try {
      final albumResponse = await http.get(Uri.parse('$baseUrl/albums'));
      final albumBody = albumResponse.body;
      final albumResult = jsonDecode(albumBody);
      List<Album> albumList =
          List.from(albumResult.map((album) => Album.fromJson(album)));
      return albumList;
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
