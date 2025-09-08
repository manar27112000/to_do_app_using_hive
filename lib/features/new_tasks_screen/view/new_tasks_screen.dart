import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        // مهم علشان يلتقط الضغط على أي مكان فاضي
        onTap: () {
          FocusScope.of(context).unfocus(); // يقفل الكيبورد
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close),
                    ),
                    const SizedBox(width: 60),
                    Text('New Task', style: Styles.textStyleBold24),
                  ],
                ),
                const SizedBox(height: 32),
                Text('Task Title :', style: Styles.textStyleBold16),
                const SizedBox(height: 10),
                TextFormField(
                  maxLines: 2,
                  minLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Text('Task Details :', style: Styles.textStyleBold16),
                const SizedBox(height: 10),
                TextFormField(
                  minLines: 10,
                  maxLines: 100,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor[50],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16,
                      ),
                      child: Text(
                        'Upload PDF',
                        style: Styles.textStyleBold16.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style: Styles.textStyleBold18.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
