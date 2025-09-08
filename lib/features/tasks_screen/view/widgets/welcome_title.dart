import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_styles.dart';

class WelcomeTitle extends StatelessWidget {
  final String text;

  const WelcomeTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.textStyleBold24,
      textAlign: TextAlign.center,
    );
  }
}
