import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  // const PostCard({required this.posts});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text("UserId"),
      title: Text("UserName"),
      onTap: () {},
    );
  }
}
