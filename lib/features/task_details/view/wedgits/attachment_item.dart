import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';

class AttachmentItem extends StatelessWidget {
  final String fileName;
  final String fileSize;
  final VoidCallback? onOpen;

  const AttachmentItem({
    super.key,
    required this.fileName,
    required this.fileSize,
    this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            IconButton(
              onPressed: onOpen,
              icon: Icon(Icons.file_copy, color: AppColors.primaryColor),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(fileName, style: Styles.textStyle16),
                Text(fileSize, style: Styles.textStyle14),
              ],
            ),
            const Spacer(),
            Icon(Icons.access_time_rounded, color: AppColors.primaryColor),
          ],
        ),
      ),
    );
  }
}
