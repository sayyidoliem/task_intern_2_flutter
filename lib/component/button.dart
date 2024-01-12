import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  HomeButton({super.key, required this.titleButton});

  String titleButton;
  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: () {}, child: Text(titleButton));
  }
}
