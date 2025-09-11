import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class CustomFAB extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomFAB({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColors.primaryColor,
      child: Icon(Icons.add, color: AppColors.buttonForeColor),
    );
  }
}
