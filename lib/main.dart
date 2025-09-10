import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_list1/features/layout_screen/view/layout_screen.dart';
import 'package:todo_list1/features/tasks_screen/view_model/add_task/add_task_cubit.dart';

import 'features/task_details/model/attachment_model.dart';
import 'features/tasks_screen/model/task_model.dart';
import 'my_bloc_observer.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();

  Hive.registerAdapter(TaskModelAdapter());
  Hive.registerAdapter(AttachmentAdapter());

  await Hive.openBox<TaskModel>('tasks');

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddTaskCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo List',
      home: LayoutScreen(),




      ),
    );
  }
}

