import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_styles.dart';

class EditButton extends StatelessWidget {
  final VoidCallback onTap;

  const EditButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8),
        child: GestureDetector(
          onTap: onTap,
          child: Text('Edit', style: Styles.textStyleBold16),
        ),
      ),
    );
  }
}
