import 'package:task_intern_2_flutter/import.dart';

part 'album_event.dart';
part 'album_state.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
 final AlbumService albumService;
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
