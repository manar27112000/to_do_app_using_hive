import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      title: Text(
        title,
        style: Styles.textStyleBold24.copyWith(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
