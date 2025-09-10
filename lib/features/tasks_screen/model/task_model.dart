import 'package:hive_flutter/adapters.dart';

import '../../task_details/model/attachment_model.dart';
part 'task_model.g.dart';

enum TaskCategory { work, personal, study, other }


@HiveType(typeId: 0)
class TaskModel extends HiveObject{
  @HiveField(0)
  final String id;
  @HiveField(1)

  final String title;
  @HiveField(2)
  final String details;
  @HiveField(3)
  final bool isFavourite;
  @HiveField(4)
  final bool isCompleted;
  @HiveField(5)
  final TaskCategory category;
  @HiveField(6)
  final DateTime createdAt;
  @HiveField(7)
  final List<Attachment> attachments;

  TaskModel({
     this.id='',
    required this.title,
    required this.details,
    this.isFavourite = false,
    this.isCompleted = false,
    this.category = TaskCategory.other,
    required this.createdAt,
    this.attachments = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'details': details,
      'isFavourite': isFavourite,
      'isCompleted': isCompleted,
      'category': category.name,
      'createdAt': createdAt.toIso8601String(),
      'attachments': attachments.map((a) => {
        'name': a.name,
        'size': a.size,
        'path': a.path,
      }).toList(),
    };
  }

  /// تحويل من Map لـ Task
  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'],
      title: map['title'],
      details: map['details'],
      isFavourite: map['isFavourite'] ?? false,
      isCompleted: map['isCompleted'] ?? false,
      category: TaskCategory.values.firstWhere(
            (e) => e.name == map['category'],
        orElse: () => TaskCategory.other,
      ),
      createdAt: DateTime.parse(map['createdAt']),
      attachments: (map['attachments'] as List<dynamic>?)
          ?.map((a) => Attachment(
        name: a['name'],
        size: a['size'],
        path: a['path'],
      ))
          .toList() ??
          [],
    );
  }
}
