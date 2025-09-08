import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_styles.dart';

class WelcomeSubtitle extends StatelessWidget {
  final String text;

  const WelcomeSubtitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.textStyle18,
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }
}
