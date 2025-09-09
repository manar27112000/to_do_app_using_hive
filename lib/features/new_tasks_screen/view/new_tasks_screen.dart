import 'package:flutter/material.dart';
import 'package:todo_list1/features/new_tasks_screen/view/widgets/add_task_form.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: const SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 8.0, horizontal: 36),
            child: AddTaskForm(),
          ),
        ),
      ),
    );
  }
}
