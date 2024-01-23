import 'package:task_intern_2_flutter/import.dart';

class ListCommentPage extends StatelessWidget {
  const ListCommentPage({
    super.key,
    required this.commentData,
  });

  final List<Comment> commentData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final commentResult = commentData[index];
          return Card(
            elevation: 3,
            child: ListTile(
              leading: CircleAvatar(child: Text(commentResult.id.toString())),
              title: Text(commentResult.email),
              subtitle: Text(commentResult.name),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesName.comment,
                  arguments: {
                    'id': commentResult.id,
                    'postId': commentResult.postId,
                    'name': commentResult.name,
                    'body': commentResult.body,
                    'email': commentResult.email,
                  },
                );
              },
            ),
          );
        },
        itemCount: commentData.length,
      ),
    );
  }
}

class ListUserPage extends StatelessWidget {
  const ListUserPage({
    super.key,
    required this.userData,
  });

  final List<User> userData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final userResult = userData[index];
              return Card(
                elevation: 3,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('${userResult.id}'),
                  ),
                  title: Text(
                    '${userResult.name} / (${userResult.userName})',
                  ),
                  subtitle: Text(userResult.email),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.user,
                      arguments: {
                        'id': userResult.id,
                        'name': userResult.name,
                        'username': userResult.userName,
                        'email': userResult.email,
                        'street': userResult.address!.street,
                        'suite': userResult.address!.suite,
                        'city': userResult.address!.city,
                        'zipcode': userResult.address!.zipcode,
                        'lat': userResult.address!.geo.lat,
                        'lng': userResult.address!.geo.lng,
                        'phone': userResult.phone,
                        'website': userResult.website,
                        'companyName': userResult.company!.name,
                        'catchphrase': userResult.company!.catchPhrase,
                        'bs': userResult.company!.bs
                      },
                    );
                  },
                ),
              );
            },
            itemCount: userData.length,
          );
        } 
        if (constraints.maxWidth <= 840) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              final userResult = userData[index];
              return Card(
                elevation: 3,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('${userResult.id}'),
                  ),
                  title: Text(
                    '${userResult.name} / (${userResult.userName})',
                  ),
                  subtitle: Text(userResult.email),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.user,
                      arguments: {
                        'id': userResult.id,
                        'name': userResult.name,
                        'username': userResult.userName,
                        'email': userResult.email,
                        'street': userResult.address!.street,
                        'suite': userResult.address!.suite,
                        'city': userResult.address!.city,
                        'zipcode': userResult.address!.zipcode,
                        'lat': userResult.address!.geo.lat,
                        'lng': userResult.address!.geo.lng,
                        'phone': userResult.phone,
                        'website': userResult.website,
                        'companyName': userResult.company!.name,
                        'catchphrase': userResult.company!.catchPhrase,
                        'bs': userResult.company!.bs
                      },
                    );
                  },
                ),
              );
            },
            itemCount: userData.length,
          );
        }
        if (constraints.maxWidth <= 1000) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              final userResult = userData[index];
              return Card(
                elevation: 3,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('${userResult.id}'),
                  ),
                  title: Text(
                    '${userResult.name} / (${userResult.userName})',
                  ),
                  subtitle: Text(userResult.email),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.user,
                      arguments: {
                        'id': userResult.id,
                        'name': userResult.name,
                        'username': userResult.userName,
                        'email': userResult.email,
                        'street': userResult.address!.street,
                        'suite': userResult.address!.suite,
                        'city': userResult.address!.city,
                        'zipcode': userResult.address!.zipcode,
                        'lat': userResult.address!.geo.lat,
                        'lng': userResult.address!.geo.lng,
                        'phone': userResult.phone,
                        'website': userResult.website,
                        'companyName': userResult.company!.name,
                        'catchphrase': userResult.company!.catchPhrase,
                        'bs': userResult.company!.bs
                      },
                    );
                  },
                ),
              );
            },
            itemCount: userData.length,
          );
        }
        else {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5),
            itemBuilder: (context, index) {
              final userResult = userData[index];
              return Card(
                elevation: 3,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('${userResult.id}'),
                  ),
                  title: Text(
                    '${userResult.name} / (${userResult.userName})',
                  ),
                  subtitle: Text(userResult.email),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.user,
                      arguments: {
                        'id': userResult.id,
                        'name': userResult.name,
                        'username': userResult.userName,
                        'email': userResult.email,
                        'street': userResult.address!.street,
                        'suite': userResult.address!.suite,
                        'city': userResult.address!.city,
                        'zipcode': userResult.address!.zipcode,
                        'lat': userResult.address!.geo.lat,
                        'lng': userResult.address!.geo.lng,
                        'phone': userResult.phone,
                        'website': userResult.website,
                        'companyName': userResult.company!.name,
                        'catchphrase': userResult.company!.catchPhrase,
                        'bs': userResult.company!.bs
                      },
                    );
                  },
                ),
              );
            },
            itemCount: userData.length,
          );
        }
      }),
    );
  }
}

class ListAlbumPage extends StatelessWidget {
  const ListAlbumPage({
    super.key,
    required this.albumData,
  });

  final List<Album> albumData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final albumResult = albumData[index];
        return ListTile(
          leading: CircleAvatar(
            child: Text(albumResult.id.toString()),
          ),
          title: Text(albumResult.title),
        );
      },
      itemCount: albumData.length,
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

class ListPostPage extends StatelessWidget {
  const ListPostPage({
    super.key,
    required this.postData,
  });

  final List<Post> postData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final postResult = postData[index];
        return ListTile(
          leading: CircleAvatar(child: Text(postResult.id.toString())),
          title: Text(postResult.title),
        );
      },
      itemCount: postData.length,
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
