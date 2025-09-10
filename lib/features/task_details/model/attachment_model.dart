import 'package:hive/hive.dart';

part 'attachment_model.g.dart';

@HiveType(typeId: 1)
class Attachment {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String size;

  @HiveField(2)
  final String path;

  Attachment({
    required this.name,
    required this.size,
    required this.path,
  });
}
