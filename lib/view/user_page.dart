import 'package:task_intern_2_flutter/import.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, this.userBloc});

  final userBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is UserSuccess) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return UserCard(user: state.users[index]);
              },
              itemCount: state.users.length,
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
