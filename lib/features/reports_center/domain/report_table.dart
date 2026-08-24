/// A module's records flattened into a printable/exportable table. Both the
/// PDF and CSV exporters consume this identical shape, so a module's columns
/// are defined exactly once.
class ReportTable {
  const ReportTable({
    required this.titleEn,
    required this.titleUr,
    required this.headersEn,
    required this.headersUr,
    required this.rows,
  });

  final String titleEn;
  final String titleUr;
  final List<String> headersEn;
  final List<String> headersUr;
  final List<List<String>> rows;

  bool get isEmpty => rows.isEmpty;
}
