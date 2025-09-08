class Attachment {
  final String name;
  final String size; // ممكن نخليها int (بـ KB أو MB)
  final String path; // مكان الملف (أو URL لو من API)

  Attachment({
    required this.name,
    required this.size,
    required this.path,
  });
}
