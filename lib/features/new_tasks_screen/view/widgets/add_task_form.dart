import 'package:flutter/material.dart';
import 'package:todo_list1/features/new_tasks_screen/view/widgets/save_button.dart';
import 'package:todo_list1/features/new_tasks_screen/view/widgets/upload_button.dart';

import '../../../../core/app_styles.dart';
import '../../../task_details/model/attachment_model.dart';
import 'custom_text_field.dart';

class AddTaskForm extends StatefulWidget {
  const AddTaskForm({super.key});

  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? details;
  List<Attachment> attachments = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

          CustomTextField(
            label: 'Task Title :',
            minLines: 1,
            maxLines: 2,
            controller: null,
            onSaved: (value) {title = value;},
          ),
          const SizedBox(height: 32),
          CustomTextField(
            label: 'Task Details :',
            minLines: 10,
            maxLines: 100,
            controller: null,
            onSaved: (value) {details = value;},
          ),

          const SizedBox(height: 20),

          UploadButton(onTap: () {}),

          const SizedBox(height: 50),

          SaveButton(onPressed: () {
            if(_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
            }else{
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          }),
        ],
      ),
    );
  }
}
