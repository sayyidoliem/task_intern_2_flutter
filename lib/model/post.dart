class Post {
  int id;
  int userId;

  Post({
    required this.id,
    required this.userId,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
    );
  }
}
