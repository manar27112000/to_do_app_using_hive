import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_styles.dart';

class SearchResultItem extends StatelessWidget {
  final String title;
  final String details;

  const SearchResultItem({
    super.key,
    required this.title,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Styles.textStyleBold20),
          const SizedBox(height: 4),
          Text(
            details,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle16,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
