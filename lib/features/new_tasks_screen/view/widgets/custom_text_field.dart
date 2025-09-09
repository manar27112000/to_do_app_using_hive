import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final int minLines;
  final int maxLines;
  final TextEditingController? controller;
 final void Function(String?)? onSaved;

  const CustomTextField({
    super.key,
    required this.label,
    this.minLines = 1,
    required  this.maxLines ,
    required this.controller,   this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Styles.textStyleBold16),
        const SizedBox(height: 10),
        TextFormField(
          validator: (value){
            if(value?.isEmpty ?? true){
              return 'field is required';
            }else{
              return null;
            }
          },
          onSaved: onSaved,
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
