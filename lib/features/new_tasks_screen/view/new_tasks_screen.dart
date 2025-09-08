import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_styles.dart';
import 'package:todo_list1/features/new_tasks_screen/view/widgets/save_button.dart';
import 'package:todo_list1/features/new_tasks_screen/view/widgets/upload_button.dart';

import 'widgets/custom_text_field.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// العنوان
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close),
                    ),
                    const SizedBox(width: 60),
                    Text('New Task', style: Styles.textStyleBold24),
                  ],
                ),

                const SizedBox(height: 32),

                /// الحقول
                const CustomTextField(label: 'Task Title :', minLines: 1, maxLines: 2),
                const SizedBox(height: 32),
                const CustomTextField(label: 'Task Details :', minLines: 10, maxLines: 100),

                const SizedBox(height: 20),

                /// زرار رفع ملف
                UploadButton(onTap: () {
                  // TODO: upload logic
                }),

                const SizedBox(height: 50),

                /// زرار الحفظ
                SaveButton(onPressed: () {
                  // TODO: save logic
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
