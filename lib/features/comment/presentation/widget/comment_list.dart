import 'package:task_intern_2_flutter/import.dart';

class ListCommentPage extends StatelessWidget {
  const ListCommentPage({
    super.key,
    required this.commentData,
  });

  final List<Comment> commentData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final commentResult = commentData[index];
          return Card(
            elevation: 3,
            child: ListTile(
              leading: CircleAvatar(child: Text(commentResult.id.toString())),
              title: Text(commentResult.email),
              subtitle: Text(commentResult.name),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesName.comment,
                  arguments: {
                    'id': commentResult.id,
                    'postId': commentResult.postId,
                    'name': commentResult.name,
                    'body': commentResult.body,
                    'email': commentResult.email,
                  },
                );
              },
            ),
          );
        },
        itemCount: commentData.length,
      ),
    );
  }
}

