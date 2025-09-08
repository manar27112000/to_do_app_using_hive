import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const CustomSearchBar({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: AppColors.primaryColor),
          const SizedBox(width: 8),
          Expanded(
            child: TextFormField(
              controller: controller,
              onChanged: onChanged,
              decoration: const InputDecoration(
                hintText: "Search tasks...",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
