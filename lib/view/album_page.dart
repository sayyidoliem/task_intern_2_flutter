import 'package:task_intern_2_flutter/import.dart';
import 'package:task_intern_2_flutter/viewmodel/album_viewmodel/album_bloc.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key, this.albumBloc});

  final albumBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlbumPage"),
      ),
      body: Center(
        child: Text("AlbumPage"),
      ),
    );
  }
}
