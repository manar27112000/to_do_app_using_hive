import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final String details;
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const TaskItem({
    super.key,
    required this.title,
    required this.details,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Styles.textStyleBold20),
                const SizedBox(height: 4),
                Text(
                  details,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle16,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),

          Checkbox(
            value: isChecked,
            onChanged: onChanged,
            checkColor: AppColors.buttonForeColor,
            fillColor: MaterialStatePropertyAll(AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
