import 'package:task_intern_2_flutter/import.dart';

class MyRoute {
  // final UserBloc userBloc = UserBloc(userService: UserService())
  //   ..add(GetUserEvent());
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => HomeBloc()),
              BlocProvider(
                create: (context) =>
                    UserBloc(userService: UserService())..add(GetUserEvent()),
              ),
              // BlocProvider.value(value: userBloc),
              BlocProvider(
                create: (context) =>
                    PostBloc(postService: PostService())..add(GetPostEvent()),
              ),
              BlocProvider(
                create: (context) =>
                    CommentBloc(commentService: CommentService())
                      ..add(GetCommentEvent()),
              ),
              BlocProvider(
                create: (context) => AlbumBloc(albumService: AlbumService())
                  ..add(GetAlbumEvent()),
              ),
            ],
            child: HomePage(),
          ),
        );
      case RoutesName.user:
        final args = settings.arguments as Map<String, dynamic>;
        final id = args['id'] as int;
        final name = args['name'] as String;
        final userName = args['username'] as String;
        final email = args['email'] as String;
        final street = args['street'] as String;
        final suite = args['suite'] as String;
        final city = args['city'] as String;
        final zipCode = args['zipcode'] as String;
        final lat = args['lat'] as String;
        final lng = args['lng'] as String;
        final phone = args['phone'] as String;
        final website = args['website'] as String;
        final companyName = args['companyName'] as String;
        final catchPhrase = args['catchphrase'] as String;
        final bs = args['bs'] as String;
        return MaterialPageRoute(
          builder: (context) => UserDetailPage(
              id: id,
              name: name,
              username: userName,
              email: email,
              street: street,
              suite: suite,
              city: city,
              zipcode: zipCode,
              lat: lat,
              lng: lng,
              phone: phone,
              website: website,
              companyName: companyName,
              catchPhrase: catchPhrase,
              bs: bs),
        );
      case RoutesName.comment:
        final args = settings.arguments as Map<String, dynamic>;
        final id = args['id'] as int;
        final postId = args['postId'] as int;
        final name = args['name'] as String;
        final email = args['email'] as String;
        final body = args['body'] as String;
        return MaterialPageRoute(
          builder: (context) => CommentDetailPage(
              postId: postId,
              id: id,
              name: name,
              email: email,
              body: body),
        );
      // case RoutesName.user:
      //   return MaterialPageRoute(
      //     settings: settings,
      //     builder: (context) => UserPage(),
      //   );
      // case RoutesName.post:
      //   return MaterialPageRoute(
      //     settings: settings,
      //     builder: (context) => PostPage(),
      //   );
      // case RoutesName.comment:
      //   return MaterialPageRoute(
      //     settings: settings,
      //     builder: (context) => CommentPage(),
      //   );
      // case RoutesName.album:
      //   return MaterialPageRoute(
      //     settings: settings,
      //     builder: (context) => AlbumPage(),
      //   );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const ErrorPage(),
        );
    }
  }
}
