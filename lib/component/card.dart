import 'package:task_intern_2_flutter/screen.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.user}) : super(key: key);

  final User user;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: () {},
        child: Row(
          children: [
            Card(
              margin: EdgeInsets.all(16),
              shape: CircleBorder(),
              child: Text(
                user.id.toString(),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name : ${user.name}"),
                Text('@${user.username}'),
                Text('E - Mail : ${user.email}',
                    maxLines: 2, overflow: TextOverflow.clip),
                Text('Phone : ${user.phone}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class PostCard extends StatelessWidget {
//   const PostCard({super.key, required this.post});

//   final Post post;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListTile(
//           leading: Text(post.id.toString()),
//           title: Text('@${post..username}'),
//           subtitle: Text(user.email),
//           onTap: () {},
//         ),
//         const Divider()
//       ],
//     );
//   }
// }
