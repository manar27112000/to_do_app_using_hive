import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';

class GetStartedButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GetStartedButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 12),
        foregroundColor: AppColors.buttonForeColor,
        backgroundColor: AppColors.primaryColor,
      ),
      child: Text(
        'Get Started',
        style: Styles.textStyleBold16,
      ),
    );
  }
}
