import 'package:bloc/bloc.dart';

import '../../model/task_model.dart';
import 'add_task_state.dart';


class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitialState());

  addTask(TaskModel taskModel) {

  }
}