
import 'package:todo_list1/features/tasks_screen/model/task_model.dart';

abstract class TaskState {}

final class TaskInitialState extends TaskState {}
final class TaskLoadingState extends TaskState {}
final class TaskSuccessState extends TaskState {
  final List<TaskModel> tasks;
  TaskSuccessState(this.tasks);
}
final class TaskFailureState extends TaskState {
  final String message;
  TaskFailureState(this.message);
}
