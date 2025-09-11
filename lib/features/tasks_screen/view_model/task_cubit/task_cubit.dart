import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:todo_list1/features/tasks_screen/view_model/task_cubit/task_state.dart';

import '../../model/task_model.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitialState());

  fetchTasks() async {
    emit(TaskLoadingState());
    try {
      var taskBox = Hive.box<TaskModel>('tasks');
      List<TaskModel> tasks = taskBox.values.toList();
      emit(TaskSuccessState(tasks));
    } catch (e) {
      emit(TaskFailureState(e.toString()));
    }
  }
}
