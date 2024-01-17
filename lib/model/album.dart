import 'package:task_intern_2_flutter/screen.dart';

List<Album> commentFromJson(String str) =>
    List<Album>.from(json.decode(str).map((x) => Album.fromJson(x)));

class Album {
  int userId;
  int id;
  String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
    );
  }
}
