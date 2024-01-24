import 'package:task_intern_2_flutter/features/album/domain/album.dart';

abstract class AlbumRepositories {
  Future<List<Album>> fetchAlbum();
}