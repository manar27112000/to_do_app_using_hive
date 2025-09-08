import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';
import 'package:todo_list1/features/favourites_screen/view/widgets/task_item.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Favourites',
          style: Styles.textStyleBold24.copyWith(
            color: AppColors.buttonForeColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return TaskItem(
                  title: "Task Title $index",
                  details: "Task Details Task Details Task Details",
                  isChecked: true,
                  onChanged: (value) {
                    // TODO: هنا ممكن تضيف لوجيك لتحديث الحالة
                  },
                );
              },
              separatorBuilder: (context, index) => Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
