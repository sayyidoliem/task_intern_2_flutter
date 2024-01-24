import 'package:task_intern_2_flutter/features/album/application/album_services.dart';
import 'package:task_intern_2_flutter/features/album/domain/album.dart';
import 'package:task_intern_2_flutter/import.dart';

part 'album_event.dart';
part 'album_state.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
 final AlbumRemoteService albumService;
  AlbumBloc({required this.albumService}) : super(AlbumInitial()) {
    on<AlbumEvent>((event, emit) async {
      emit(AlbumLoading());
      await Future.delayed(const Duration(seconds: 3));
      try {
        final response = await albumService.fetchAlbum();
        emit(AlbumSuccess(response));
      } catch (e) {
        emit(AlbumError());
      }
    });
  }
}
