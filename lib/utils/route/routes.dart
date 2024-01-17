import 'package:task_intern_2_flutter/import.dart';

class MyRoute {
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) => UserBloc(userService: UserService())..add(GetUserEvent()),
            ),
            BlocProvider(
              create: (context) => PostBloc(postService: PostService())..add(GetPostEvent()),
            ),
            BlocProvider(
              create: (context) => CommentBloc(commentService: CommentService())..add(GetCommentEvent()),
            ),
            BlocProvider(
              create: (context) => AlbumBloc(albumService: AlbumService())..add(GetAlbumEvent()),
            ),
          ], child: HomePage()),
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
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const ErrorPage(),
        );
    }
  }
}
