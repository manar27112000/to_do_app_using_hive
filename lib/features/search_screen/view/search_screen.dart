import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';
import 'package:todo_list1/features/search_screen/view/widgets/search_bar.dart';

import 'widgets/search_result_item.dart';

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
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// ✅ حقل البحث
              const CustomSearchBar(),

              const SizedBox(height: 16),

              /// العنوان
              Text(
                'Results',
                style: Styles.textStyleBold24.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),

              /// ✅ النتائج
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const SearchResultItem(
                      title: "Task Title",
                      details:
                      "Task Details Task Details Task Details Task Details Task Details Task Details",
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
        ),
      ),
    );
  }
}
