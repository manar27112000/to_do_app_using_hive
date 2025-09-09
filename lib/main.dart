import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_list1/features/layout_screen/view/layout_screen.dart';

import 'features/tasks_screen/model/task_model.dart';


void main() async{
  await Hive.initFlutter();
  await Hive.openBox('tasks');
  Hive.registerAdapter(TaskAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List',
home: LayoutScreen(),




    );
  }
}

