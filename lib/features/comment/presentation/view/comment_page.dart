import 'package:task_intern_2_flutter/import.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key, required this.commentBloc});

  final CommentBloc commentBloc;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentBloc, CommentState>(
      bloc: commentBloc,
      builder: (context, state) {
        if (state is CommentLoading) {
          return const CircularProgressIndicator();
        }
        if (state is CommentSuccess) {
          final commentData = state.comment;
          return ListCommentPage(commentData: commentData);
        }
        if (state is CommentError) {
          return const ErrorPage();
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
