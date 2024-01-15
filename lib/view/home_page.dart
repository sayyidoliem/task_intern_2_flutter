import 'package:task_intern_2_flutter/screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeButton(
              titleButton: "User List",
              onPressed: () => Navigator.of(context).pushNamed("/user"),
            ),
            HomeButton(
              titleButton: "Post List",
              onPressed: () => Navigator.of(context).pushNamed("/post"),
            ),
            HomeButton(
              titleButton: "Album List",
              onPressed: () => Navigator.of(context).pushNamed("/album"),
            ),
            HomeButton(
              titleButton: "Photo List",
              onPressed: () => Navigator.of(context).pushNamed("/photo"),
            ),
          ],
        ),
      ),
    );
  }
}
