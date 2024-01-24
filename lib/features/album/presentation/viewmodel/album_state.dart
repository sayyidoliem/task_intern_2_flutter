part of 'album_bloc.dart';

sealed class AlbumState {}

class AlbumInitial extends AlbumState {}

class AlbumLoading extends AlbumState {}

class AlbumSuccess extends AlbumState {
  final List<Album> album;

  AlbumSuccess(this.album);
}

class AlbumError extends AlbumState {}
