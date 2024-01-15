import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  HomeButton({super.key, required this.titleButton, required this.onPressed});

  String titleButton;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        onPressed();
      },
      child: Text(titleButton),
    );
  }
}
