import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import '../../model/task_model.dart';
import 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitialState());

  addTask(TaskModel taskModel) {
   emit(AddTaskLoadingState());
   try {
    var taskBox = Hive.box<TaskModel>('tasks');
    taskBox.add(taskModel);

    emit(AddTaskSuccessState());
   } catch (e) {
    emit(AddTaskFailureState(e.toString()));
   }
  }
}
