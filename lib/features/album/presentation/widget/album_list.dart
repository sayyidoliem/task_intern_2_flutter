import 'package:task_intern_2_flutter/import.dart';

class ListAlbumPage extends StatelessWidget {
  const ListAlbumPage({
    super.key,
    required this.albumData,
  });

  final List<Album> albumData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final albumResult = albumData[index];
        return ListTile(
          leading: CircleAvatar(
            child: Text(albumResult.id.toString()),
          ),
          title: Text(albumResult.title),
        );
      },
      itemCount: albumData.length,
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}