import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_styles.dart';
import 'package:todo_list1/features/task_details/view/wedgits/add_attachment_button.dart';
import 'package:todo_list1/features/task_details/view/wedgits/attachment_item.dart';
import 'package:todo_list1/features/task_details/view/wedgits/edit.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task Title', style: Styles.textStyleBold24)),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// التفاصيل
            Text(
              'Task Details Task Details Task Details Task Details Task Details Task Details',
              style: Styles.textStyle18,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),

            /// العنوان
            Text('Attachments', style: Styles.textStyleBold24),
            const SizedBox(height: 16),

            /// عنصر مرفق
            AttachmentItem(
              fileName: 'File Name',
              fileSize: 'File Size',
              onOpen: () {
                // TODO: open file
              },
            ),

            const SizedBox(height: 16),

            /// زرار إضافة مرفق
            AddAttachmentButton(
              onTap: () {
                // TODO: add attachment
              },
            ),

            const SizedBox(height: 16),

            /// زرار تعديل
            EditButton(
              onTap: () {
                // TODO: edit task
              },
            ),
          ],
        ),
      ),
    );
  }
}
