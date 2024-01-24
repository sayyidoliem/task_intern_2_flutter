import 'package:task_intern_2_flutter/import.dart';

class ListPostPage extends StatelessWidget {
  const ListPostPage({
    super.key,
    required this.postData,
  });

  final List<Post> postData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final postResult = postData[index];
        return ListTile(
          leading: CircleAvatar(child: Text(postResult.id.toString())),
          title: Text(postResult.title),
        );
      },
      itemCount: postData.length,
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
