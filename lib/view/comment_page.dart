import 'package:task_intern_2_flutter/import.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key, this.commentBloc});

  final commentBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comment Page"),
      ),
      body: Center(
        child: Text("Comment Page"),
      ),
    );
  }
}
