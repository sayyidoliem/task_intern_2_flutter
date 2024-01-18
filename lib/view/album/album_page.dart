import 'package:task_intern_2_flutter/import.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key, required this.albumBloc});

  final AlbumBloc albumBloc;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumBloc, AlbumState>(
      bloc: albumBloc,
      builder: (context, state) {
        if (state is AlbumLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is AlbumSuccess) {
          final albumData = state.album;
          return ListAlbumPage(albumData: albumData);
        }
        if (state is AlbumError) {
          return const ErrorPage();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}