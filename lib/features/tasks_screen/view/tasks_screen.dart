import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';
import 'package:todo_list1/features/tasks_screen_details/view/tasks_screen_details.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.add_task, color: AppColors.primaryColor,size: 100,),
          SizedBox(height: 16),
        Text('Welcome to Your To - Do List', style: Styles.textStyleBold24),
        SizedBox(height: 16),
        Text(
          'Organize Your day ,track your progress and achieve your goals with ease',
          style: Styles.textStyle18,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const TasksScreenDetails(),));},
          child: Text('Get Started',style: Styles.textStyleBold16,),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 12),
            foregroundColor: AppColors.buttonForeColor,
            backgroundColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
