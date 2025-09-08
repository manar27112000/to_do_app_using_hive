import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';

class AddAttachmentButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddAttachmentButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor[50],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: onTap,
              icon: Icon(Icons.add, color: AppColors.primaryColor),
            ),
            Text(
              'Add Attachment',
              style: Styles.textStyleBold16.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
