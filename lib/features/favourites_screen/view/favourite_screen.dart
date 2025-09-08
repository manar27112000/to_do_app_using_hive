import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: AppColors.primaryColor,
        title:  Text('Favourites',style: Styles.textStyleBold24.copyWith(color: AppColors.buttonForeColor),),
      ),
      body: Column(
        children: [

          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
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
                      ),
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                        checkColor: AppColors.buttonForeColor,
                        fillColor: MaterialStatePropertyAll(AppColors.primaryColor),
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
      )
    );



  }
}
