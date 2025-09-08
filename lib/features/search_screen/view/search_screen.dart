import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Search',
          style: Styles.textStyleBold24.copyWith(
            color: AppColors.buttonForeColor,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          // ✅ لما أدوس في أي مكان فاضي يقفل الكيبورد
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // خلفية فاتحة
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: AppColors.primaryColor),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Search tasks...",
                          border: InputBorder.none, // نشيل البوردر
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Results',
                style: Styles.textStyleBold24.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Task Title', style: Styles.textStyleBold20),
                          const SizedBox(height: 4),
                          Text(
                            'Task Details Task Details Task Details Task Details Task Details Task Details Task Details Task Details',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.textStyle16,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.grey.shade300,
                    );
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
