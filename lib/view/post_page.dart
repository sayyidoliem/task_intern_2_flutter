import 'package:flutter/material.dart';
import 'package:task_intern_2_flutter/import.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key, this.postBloc});

  final postBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Page"),
      ),
      body: Center(
        child: Text("Post Page"),
      ),
    );
  }
}
