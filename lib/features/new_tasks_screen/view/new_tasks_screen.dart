import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list1/features/new_tasks_screen/view/widgets/add_task_form.dart';
import 'package:todo_list1/features/tasks_screen/view_model/add_task/add_task_cubit.dart';
import 'package:todo_list1/features/tasks_screen/view_model/add_task/add_task_state.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTaskCubit(),
      child: Scaffold(
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusScope.of(context).unfocus(),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 36),
              child: BlocConsumer<AddTaskCubit, AddTaskState>(
                listener: (context, state) {
                  if (state is AddTaskSuccessState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Task added successfully')),
                    );
                  }
                  if (state is AddTaskFailureState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Failed to add task, try again')),
                    );
                  }
                },
                builder: (context, state) {
                  return AddTaskForm();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
