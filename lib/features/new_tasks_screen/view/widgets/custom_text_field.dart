import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final int minLines;
  final int maxLines;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.label,
    this.minLines = 1,
    this.maxLines = 1,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Styles.textStyleBold16),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          minLines: minLines,
          maxLines: maxLines,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
