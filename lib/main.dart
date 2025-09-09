import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_list1/features/layout_screen/view/layout_screen.dart';


void main() async{
  await Hive.initFlutter();
  await Hive.openBox('tasks');
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

