import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_styles.dart';

class SettingsSectionTitle extends StatelessWidget {
  final String title;

  const SettingsSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Text(
        title,
        style: Styles.textStyleBold20.copyWith(color: Colors.grey.shade600),
      ),
    );
  }
}
