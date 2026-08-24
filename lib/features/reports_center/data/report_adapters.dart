import 'package:intl/intl.dart';

import '../../admission_campaign/data/models/admission_campaign_model.dart';
import '../../admission_campaign/data/models/oosc_record_model.dart';
import '../../emergency_reports/data/models/emergency_report_model.dart';
import '../../ptc_priorities/data/models/ptc_priority_model.dart';
import '../../school_monitoring/data/models/monitoring_report_model.dart';
import '../../school_problems/data/models/school_problem_model.dart';
import '../domain/report_module.dart';
import '../domain/report_table.dart';

final DateFormat _d = DateFormat('yyyy-MM-dd');

/// One adapter per exportable module: filters the records and flattens them
/// into a [ReportTable]. Pure functions — no Firestore, no widgets — so the
/// column definitions and filtering are directly unit testable.
ReportTable buildAdmissionCampaignTable(
  List<AdmissionCampaignModel> items,
  ReportFilter filter,
) {
  final List<AdmissionCampaignModel> filtered = items
      .where((c) => filter.matchesDate(c.date) && filter.matchesSchool(c.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Admission Campaign Report',
    titleUr: 'داخلہ مہم رپورٹ',
    headersEn: const <String>[
      'Date', 'Academic Year', 'Target', 'Current', 'Achievement %',
      'New (Boys)', 'New (Girls)', 'OOSC Identified', 'OOSC Re-enrolled',
    ],
    headersUr: const <String>[
      'تاریخ', 'تعلیمی سال', 'ہدف', 'موجودہ', 'حصولی فیصد',
      'نئے (لڑکے)', 'نئے (لڑکیاں)', 'OOSC نشاندہی', 'OOSC دوبارہ داخل',
    ],
    rows: <List<String>>[
      for (final AdmissionCampaignModel c in filtered)
        <String>[
          _d.format(c.date),
          c.academicYear,
          '${c.targetEnrollment}',
          '${c.currentEnrollment}',
          c.achievementPercentage.toStringAsFixed(1),
          '${c.newAdmissionsBoys}',
          '${c.newAdmissionsGirls}',
          '${c.ooscIdentified}',
          '${c.ooscReenrolled}',
        ],
    ],
  );
}

ReportTable buildOoscTable(List<OoscRecordModel> items, ReportFilter filter) {
  final List<OoscRecordModel> filtered = items
      .where((o) => filter.matchesDate(o.createdAt) && filter.matchesSchool(o.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Out-of-School Children Report',
    titleUr: 'آؤٹ آف سکول بچوں کی رپورٹ',
    headersEn: const <String>[
      'Child Name', 'Gender', 'Age', 'Village', 'Guardian', 'Contact', 'Reason', 'Status',
    ],
    headersUr: const <String>[
      'بچے کا نام', 'جنس', 'عمر', 'گاؤں', 'سرپرست', 'رابطہ', 'وجہ', 'حیثیت',
    ],
    rows: <List<String>>[
      for (final OoscRecordModel o in filtered)
        <String>[
          o.childName,
          o.gender.name,
          '${o.age}',
          o.village ?? '',
          o.parentGuardianName ?? '',
          o.contactPhone ?? '',
          o.reason.name,
          o.status.name,
        ],
    ],
  );
}

ReportTable buildMonitoringTable(List<MonitoringReportModel> items, ReportFilter filter) {
  final List<MonitoringReportModel> filtered = items
      .where((m) => filter.matchesDate(m.visitDate) && filter.matchesSchool(m.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'School Monitoring Report',
    titleUr: 'سکول نگرانی رپورٹ',
    headersEn: const <String>['Visit Date', 'Monitored By', 'Score', 'Grade', 'Status', 'Remarks'],
    headersUr: const <String>['وزٹ کی تاریخ', 'نگران', 'سکور', 'درجہ', 'حیثیت', 'تبصرہ'],
    rows: <List<String>>[
      for (final MonitoringReportModel m in filtered)
        <String>[
          _d.format(m.visitDate),
          m.monitoredByName,
          m.totalWeightedScore.toStringAsFixed(1),
          m.grade,
          m.status.name,
          m.remarks ?? '',
        ],
    ],
  );
}

ReportTable buildSchoolProblemTable(List<SchoolProblemModel> items, ReportFilter filter) {
  final List<SchoolProblemModel> filtered = items
      .where((p) => filter.matchesDate(p.dateReported) && filter.matchesSchool(p.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'School Problems Report',
    titleUr: 'سکول مسائل رپورٹ',
    headersEn: const <String>[
      'Date', 'Title', 'Category', 'Priority', 'Status', 'Assigned To', 'Reported By',
    ],
    headersUr: const <String>[
      'تاریخ', 'عنوان', 'زمرہ', 'ترجیح', 'حیثیت', 'ذمہ دار', 'اطلاع دہندہ',
    ],
    rows: <List<String>>[
      for (final SchoolProblemModel p in filtered)
        <String>[
          _d.format(p.dateReported),
          p.title,
          p.category.name,
          p.priority.name,
          p.status.name,
          p.assignedToName ?? '',
          p.reportedByName,
        ],
    ],
  );
}

ReportTable buildEmergencyTable(List<EmergencyReportModel> items, ReportFilter filter) {
  final List<EmergencyReportModel> filtered = items
      .where((e) => filter.matchesDate(e.occurredAt) && filter.matchesSchool(e.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Emergency Reports',
    titleUr: 'ہنگامی صورتحال رپورٹس',
    headersEn: const <String>[
      'Date', 'Type', 'Severity', 'Status', 'Description', 'Reported By', 'Contact',
    ],
    headersUr: const <String>[
      'تاریخ', 'قسم', 'شدت', 'حیثیت', 'تفصیل', 'اطلاع دہندہ', 'رابطہ',
    ],
    rows: <List<String>>[
      for (final EmergencyReportModel e in filtered)
        <String>[
          _d.format(e.occurredAt),
          e.emergencyType.name,
          e.severity.name,
          e.status.name,
          e.description,
          e.reportedByName,
          e.contactPhone ?? '',
        ],
    ],
  );
}

ReportTable buildPtcTable(List<PtcPriorityModel> items, ReportFilter filter) {
  final List<PtcPriorityModel> filtered = items
      .where((p) => filter.matchesDate(p.meetingDate) && filter.matchesSchool(p.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'PTC Priorities Report',
    titleUr: 'PTC ترجیحات رپورٹ',
    headersEn: const <String>[
      'Meeting Date', 'Rank', 'Priority', 'Category', 'Estimated Cost',
      'Available Funds', 'Required Funds', 'Status',
    ],
    headersUr: const <String>[
      'اجلاس کی تاریخ', 'درجہ', 'ترجیح', 'زمرہ', 'تخمینی لاگت',
      'دستیاب فنڈز', 'درکار فنڈز', 'حیثیت',
    ],
    rows: <List<String>>[
      for (final PtcPriorityModel p in filtered)
        <String>[
          _d.format(p.meetingDate),
          '${p.rank}',
          p.priorityTitle,
          p.category.name,
          p.estimatedCost.toStringAsFixed(0),
          p.availableFunds.toStringAsFixed(0),
          p.requiredFunds.toStringAsFixed(0),
          p.status.name,
        ],
    ],
  );
}
