import 'package:task_intern_2_flutter/import.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.userBloc});

  final UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      bloc: userBloc,
      builder: (context, state) {
        if (state is UserLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UserSuccess) {
          final userData = state.users;
          return ListUserPage(userData: userData);
        }
        if (state is UserError) {
          return const ErrorPage();
        } else {
          return const Text('NotFound');
        }
      },
    );
  }
}
