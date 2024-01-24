import 'package:task_intern_2_flutter/import.dart';

class CommentDetailPage extends StatelessWidget {
  const CommentDetailPage(
      {super.key,
      required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comment Detail Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    child: Text(
                      '$id',
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("PostId : $postId"),
              const SizedBox(
                height: 20,
              ),
              Text("Id : $id"),
              const SizedBox(
                height: 20,
              ),
              Text("Email : $email"),
              const SizedBox(
                height: 20,
              ),
              Text("Boduy : $body"),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
