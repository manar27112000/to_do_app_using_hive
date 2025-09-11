import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list1/features/tasks_screen_details/view/widgets/custom_app_bar.dart';
import 'package:todo_list1/features/tasks_screen_details/view/widgets/custom_floating_button.dart';
import 'package:todo_list1/features/tasks_screen_details/view/widgets/tasks_list.dart';

import '../../new_tasks_screen/view/new_tasks_screen.dart';
import '../../task_details/view/task_details.dart';
import '../../tasks_screen/view_model/task_cubit/task_cubit.dart';

class TasksScreenDetails extends StatelessWidget {
  const TasksScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: Scaffold(
        appBar: const CustomAppBar(title: 'My Tasks'),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: TasksList(
            itemCount: 5,
            onTap: (index) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TaskDetails(),
                ),
              );
            },
          ),
        ),
        floatingActionButton: CustomFAB(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NewTasksScreen(),
              ),
            );
          },
        ),
      ),
    );
  }

}
