import 'package:flutter/material.dart';
import 'package:todo_list1/features/tasks_screen_details/view/widgets/task_item.dart';

class TasksList extends StatelessWidget {
  final int itemCount;
  final Function(int) onTap;

  const TasksList({
    super.key,
    required this.itemCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return TaskItem(
          title: 'Task Title $index',
          onTap: () => onTap(index),
          onFavorite: () {},
          onEdit: () {},
          onDelete: () {},
        );
      },
    );
  }
}
