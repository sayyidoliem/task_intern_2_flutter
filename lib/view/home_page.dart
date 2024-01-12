import 'package:flutter/material.dart';
import 'package:task_intern_2_flutter/component/button.dart';
import 'package:task_intern_2_flutter/component/card.dart';

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
            HomeButton(titleButton: "User List"),
            HomeButton(titleButton: "Post List"),
            HomeButton(titleButton: "Album List"),
            HomeButton(titleButton: "Photo List"),
          ],
        ),
      ),
    );
  }
}
