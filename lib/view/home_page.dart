import 'package:task_intern_2_flutter/import.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<BottomNavigationBarItem> navItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
    const BottomNavigationBarItem(icon: Icon(Icons.comment), label: 'Comment'),
    const BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Album'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.send_rounded), label: 'Post'),
  ];

  List<Text> appBarTitle = <Text>[
    const Text('FETCH USERS API',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
    const Text(
      'FETCH COMMENTS API',
      style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
    ),
    const Text(
      'FETCH ALBUMS API',
      style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
    ),
    const Text(
      'FETCH POSTS API',
      style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);
    UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    AlbumBloc albumBloc = BlocProvider.of<AlbumBloc>(context);
    CommentBloc commentBloc = BlocProvider.of<CommentBloc>(context);
    PostBloc postBloc = BlocProvider.of<PostBloc>(context);

    List<Widget> homeBody = <Widget>[
      UserPage(userBloc: userBloc),
      CommentPage(commentBloc: commentBloc),
      AlbumPage(albumBloc: albumBloc),
      PostPage(postBloc: postBloc)
    ];

    return BlocBuilder<HomeBloc, HomeState>(
      bloc: homeBloc,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: appBarTitle.elementAt(state.tabIndex),
          ),
          body: homeBody.elementAt(state.tabIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: navItems,
            currentIndex: state.tabIndex,
            elevation: 0,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              homeBloc.add(ChangeTab(tabIndex: index));
            },
          ),
        );
      },
    );
  }
}
