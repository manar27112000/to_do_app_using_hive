import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/features/tasks_screen/view/widgets/get_started.dart';
import 'package:todo_list1/features/tasks_screen/view/widgets/welcome_sub_title.dart';
import 'package:todo_list1/features/tasks_screen_details/view/tasks_screen_details.dart';

import 'widgets/welcome_title.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.add_task, color: AppColors.primaryColor, size: 100),
        const SizedBox(height: 16),

        /// العنوان
        const WelcomeTitle(text: 'Welcome to Your To - Do List'),
        const SizedBox(height: 16),

        /// الوصف
        const WelcomeSubtitle(
          text:
          'Organize Your day, track your progress and achieve your goals with ease',
        ),
        const SizedBox(height: 16),

        /// زرار Get Started
        GetStartedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TasksScreenDetails(),
              ),
            );
          },
        ),
      ],
    );
  }
}
