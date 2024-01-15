import 'package:flutter/material.dart';
import 'package:task_intern_2_flutter/model/user.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.user}) : super(key: key);

  final User user;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(user.id.toString()),
          title: Text('@${user.username}'),
          subtitle: Text(user.email),
          onTap: () {},
        ),
        const Divider()
      ],
    );
  }
}
