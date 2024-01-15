import 'package:task_intern_2_flutter/screen.dart';
import 'package:task_intern_2_flutter/view/album_page.dart';
import 'package:task_intern_2_flutter/view/comment_page.dart';
import 'package:task_intern_2_flutter/view/error.dart';
import 'package:task_intern_2_flutter/view/home_page.dart';
import 'package:task_intern_2_flutter/view/photo_page.dart';
import 'package:task_intern_2_flutter/view/post_page.dart';
import 'package:task_intern_2_flutter/view/user_page.dart';

class MyRoute {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => HomePage(),
        );

      case RoutesName.user:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => UserPage(),
        );
      case RoutesName.post:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => PostPage(),
        );
      case RoutesName.comment:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => CommentPage(),
        );
      case RoutesName.album:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => AlbumPage(),
        );
      case RoutesName.photo:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => PhotoPage(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => ErrorPage(),
        );
    }
  }
}
