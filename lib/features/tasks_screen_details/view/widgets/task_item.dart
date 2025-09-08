import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final VoidCallback? onFavorite;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const TaskItem({
    super.key,
    required this.title,
    required this.onTap,
    this.onFavorite,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                Text(title, style: Styles.textStyle20),
                const Spacer(),
                IconButton(
                  onPressed: onFavorite,
                  icon: Icon(Icons.favorite_border_outlined,
                      color: AppColors.grayColor, size: 28),
                ),
                IconButton(
                  onPressed: onEdit,
                  icon: Icon(Icons.mode_edit_outlined,
                      color: AppColors.grayColor, size: 28),
                ),
                IconButton(
                  onPressed: onDelete,
                  icon: Icon(Icons.delete_forever_outlined,
                      color: AppColors.grayColor, size: 28),
                ),
              ],
            ),
          ),
        ),
        Divider(height: 2, color: Colors.grey[200]),
      ],
    );
  }
}
