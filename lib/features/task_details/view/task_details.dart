import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task Title', style: Styles.textStyleBold24)),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Task DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask DetailsTask Details',
              style: Styles.textStyle18,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text('Attachments', style: Styles.textStyleBold24,),
            SizedBox(height: 16),
            Container(color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.file_copy, color: AppColors.primaryColor),
                    ),
                    Column(
                      children: [
                        Text('File Name', style: Styles.textStyle16),
                        Text('File Size', style: Styles.textStyle14),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.access_time_rounded, color: AppColors.primaryColor),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(color: AppColors.primaryColor[50],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.add,color: AppColors.primaryColor),),
                Text('Add Attachment', style: Styles.textStyleBold16.copyWith(color: AppColors.primaryColor),),
                            ],),
              ),),
            SizedBox(height: 16),
            Container(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 8),
              child: Text('Edit',style: Styles.textStyleBold16,),
            ),decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),)
          ],
        ),
      ),
    );
  }
}
