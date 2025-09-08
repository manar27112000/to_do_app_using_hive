import '../../task_details/model/attachment_model.dart';

enum TaskCategory { work, personal, study, other }

class Task {
  final String id;
  final String title;
  final String details;
  final bool isFavourite;
  final bool isCompleted;
  final TaskCategory category;
  final DateTime createdAt;
  final List<Attachment> attachments;

  Task({
    required this.id,
    required this.title,
    required this.details,
    this.isFavourite = false,
    this.isCompleted = false,
    this.category = TaskCategory.other,
    required this.createdAt,
    this.attachments = const [],
  });

  /// لتحويل الـ Task لـ Map (مفيدة مع Hive أو API)
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
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
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
