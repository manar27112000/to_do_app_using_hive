import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';
import 'package:todo_list1/features/new_tasks_screen/view/new_tasks_screen.dart';
import 'package:todo_list1/features/task_details/view/task_details.dart';
import 'package:todo_list1/features/tasks_screen_details/view/widgets/task_item.dart';

class TasksScreenDetails extends StatelessWidget {
  const TasksScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'My Tasks',
          style: Styles.textStyleBold24.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return TaskItem(
              title: 'Task Title $index',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TaskDetails(),
                  ),
                );
              },
              onFavorite: () {
                // TODO: Add to favorites
              },
              onEdit: () {
                // TODO: Edit task
              },
              onDelete: () {
                // TODO: Delete task
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewTasksScreen(),
            ),
          );
        },
        backgroundColor: AppColors.primaryColor,
        child: Icon(Icons.add, color: AppColors.buttonForeColor),
      ),
    );
  }
}
