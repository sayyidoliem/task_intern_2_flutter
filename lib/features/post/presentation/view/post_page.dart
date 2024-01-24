import 'package:task_intern_2_flutter/import.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key, required this.postBloc});

  final PostBloc postBloc;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        if (state is PostLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is PostSuccess) {
          final postData = state.post;
          return ListPostPage(postData: postData);
        }
        if (state is PostError) {
          return const ErrorPage();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
