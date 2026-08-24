/// The modules the Reports Center can export. Adding a module here plus a
/// matching adapter in `report_adapters.dart` is all that's needed to make
/// it exportable (see docs/MODULE_PATTERN.md).
enum ReportModule {
  admissionCampaigns,
  oosc,
  monitoringReports,
  schoolProblems,
  emergencyReports,
  ptcPriorities,
}

enum ExportFormat { pdf, csv }

/// Filters applied to a report before export. Hierarchy scoping is always
/// applied on top of these from the current user's own scope, so a filter
/// can only ever narrow what a user is already allowed to see.
class ReportFilter {
  const ReportFilter({
    required this.module,
    this.fromDate,
    this.toDate,
    this.schoolId,
  });

  final ReportModule module;
  final DateTime? fromDate;
  final DateTime? toDate;
  final String? schoolId;

  bool matchesDate(DateTime date) {
    if (fromDate != null && date.isBefore(DateTime(fromDate!.year, fromDate!.month, fromDate!.day))) {
      return false;
    }
    if (toDate != null) {
      // Inclusive of the whole end day.
      final DateTime endOfDay = DateTime(toDate!.year, toDate!.month, toDate!.day, 23, 59, 59);
      if (date.isAfter(endOfDay)) return false;
    }
    return true;
  }

  bool matchesSchool(String candidateSchoolId) =>
      schoolId == null || schoolId == candidateSchoolId;
}
