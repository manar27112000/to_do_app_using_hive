import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';
import 'package:todo_list1/features/new_tasks_screen/view/new_tasks_screen.dart';
import 'package:todo_list1/features/task_details/view/task_details.dart';

class TasksScreenDetails extends StatelessWidget {
  const TasksScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          ' My Tasks',
          style: Styles.textStyleBold24.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskDetails(),));},
                    child: Row(
                      children: [
                        Text('Task Title', style: Styles.textStyle20),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            color: AppColors.grayColor,
                            size: 28,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mode_edit_outlined,
                            color: AppColors.grayColor,
                            size: 28,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_forever_outlined,
                            color: AppColors.grayColor,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(height: 2,color: Colors.grey[200],),
              ],
            );
          },
          itemCount: 5,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const NewTasksScreen(),));},
        child: Icon(Icons.add,color: AppColors.buttonForeColor,),
        backgroundColor: AppColors.primaryColor,

      ),
    );
  }
}
