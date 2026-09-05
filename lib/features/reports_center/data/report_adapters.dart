import 'package:intl/intl.dart';

import '../../admission_campaign/data/models/admission_campaign_model.dart';
import '../../admission_campaign/data/models/oosc_record_model.dart';
import '../../advertisement_campaigns/data/models/advertisement_campaign_model.dart';
import '../../cleanliness/data/models/cleanliness_model.dart';
import '../../cluster_meetings/data/models/cluster_meeting_model.dart';
import '../../community_engagement/data/models/community_activity_model.dart';
import '../../door_to_door/data/models/door_to_door_activity_model.dart';
import '../../ece_monitoring/data/models/ece_monitoring_model.dart';
import '../../emergency_reports/data/models/emergency_report_model.dart';
import '../../parent_teacher_contact/data/models/parent_contact_model.dart';
import '../../plantation/data/models/plantation_model.dart';
import '../../ptc_priorities/data/models/ptc_priority_model.dart';
import '../../school_functionality/data/models/school_functionality_model.dart';
import '../../school_monitoring/data/models/monitoring_report_model.dart';
import '../../school_opening/data/models/school_opening_model.dart';
import '../../school_problems/data/models/school_problem_model.dart';
import '../../social_media_campaigns/data/models/social_media_campaign_model.dart';
import '../../statements/data/models/statement_model.dart';
import '../../textbook_distribution/data/models/textbook_distribution_model.dart';
import '../domain/report_module.dart';
import '../domain/report_table.dart';

final DateFormat _d = DateFormat('yyyy-MM-dd');

/// One adapter per exportable module: filters the records and flattens them
/// into a [ReportTable]. Pure functions — no Firestore, no widgets — so the
/// column definitions and filtering are directly unit testable.
ReportTable buildAdmissionCampaignTable(List<AdmissionCampaignModel> items, ReportFilter filter) {
  final List<AdmissionCampaignModel> filtered = items
      .where((c) => filter.matchesDate(c.date) && filter.matchesSchool(c.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Admission Campaign Report',
    titleUr: 'داخلہ مہم رپورٹ',
    headersEn: const <String>[
      'Date',
      'Academic Year',
      'Target',
      'Current',
      'Achievement %',
      'New (Boys)',
      'New (Girls)',
      'OOSC Identified',
      'OOSC Re-enrolled',
    ],
    headersUr: const <String>[
      'تاریخ',
      'تعلیمی سال',
      'ہدف',
      'موجودہ',
      'حصولی فیصد',
      'نئے (لڑکے)',
      'نئے (لڑکیاں)',
      'OOSC نشاندہی',
      'OOSC دوبارہ داخل',
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
      'Child Name',
      'Gender',
      'Age',
      'Village',
      'Guardian',
      'Contact',
      'Reason',
      'Status',
    ],
    headersUr: const <String>[
      'بچے کا نام',
      'جنس',
      'عمر',
      'گاؤں',
      'سرپرست',
      'رابطہ',
      'وجہ',
      'حیثیت',
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
      'Date',
      'Title',
      'Category',
      'Priority',
      'Status',
      'Assigned To',
      'Reported By',
    ],
    headersUr: const <String>['تاریخ', 'عنوان', 'زمرہ', 'ترجیح', 'حیثیت', 'ذمہ دار', 'اطلاع دہندہ'],
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
      'Date',
      'Type',
      'Severity',
      'Status',
      'Description',
      'Reported By',
      'Contact',
    ],
    headersUr: const <String>['تاریخ', 'قسم', 'شدت', 'حیثیت', 'تفصیل', 'اطلاع دہندہ', 'رابطہ'],
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
      'Meeting Date',
      'Rank',
      'Priority',
      'Category',
      'Estimated Cost',
      'Available Funds',
      'Required Funds',
      'Status',
    ],
    headersUr: const <String>[
      'اجلاس کی تاریخ',
      'درجہ',
      'ترجیح',
      'زمرہ',
      'تخمینی لاگت',
      'دستیاب فنڈز',
      'درکار فنڈز',
      'حیثیت',
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

ReportTable buildDoorToDoorTable(List<DoorToDoorActivityModel> items, ReportFilter filter) {
  final List<DoorToDoorActivityModel> filtered = items
      .where((a) => filter.matchesDate(a.activityDate) && filter.matchesSchool(a.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Door-to-Door Campaign Report',
    titleUr: 'گھر گھر داخلہ مہم رپورٹ',
    headersEn: const <String>[
      'Date',
      'Area',
      'Houses Visited',
      'Children Identified',
      'Children Enrolled',
      'Parents Contacted',
    ],
    headersUr: const <String>[
      'تاریخ',
      'علاقہ',
      'زیر دورہ گھر',
      'شناخت شدہ بچے',
      'داخل شدہ بچے',
      'رابطہ شدہ والدین',
    ],
    rows: <List<String>>[
      for (final DoorToDoorActivityModel a in filtered)
        <String>[
          _d.format(a.activityDate),
          a.area ?? '',
          '${a.housesVisited}',
          '${a.childrenIdentified}',
          '${a.childrenEnrolled}',
          '${a.parentsContacted}',
        ],
    ],
  );
}

ReportTable buildCommunityActivityTable(List<CommunityActivityModel> items, ReportFilter filter) {
  final List<CommunityActivityModel> filtered = items
      .where((a) => filter.matchesDate(a.activityDate) && filter.matchesSchool(a.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Community Engagement Report',
    titleUr: 'کمیونٹی رابطہ رپورٹ',
    headersEn: const <String>[
      'Date',
      'Activity Type',
      'Participants',
      'Female Participants',
      'Venue',
    ],
    headersUr: const <String>['تاریخ', 'سرگرمی کی قسم', 'شرکاء', 'خواتین شرکاء', 'مقام'],
    rows: <List<String>>[
      for (final CommunityActivityModel a in filtered)
        <String>[
          _d.format(a.activityDate),
          a.activityType.name,
          '${a.participantsCount}',
          '${a.femaleParticipantsCount}',
          a.venue ?? '',
        ],
    ],
  );
}

ReportTable buildParentContactTable(List<ParentContactModel> items, ReportFilter filter) {
  final List<ParentContactModel> filtered = items
      .where((c) => filter.matchesDate(c.contactDate) && filter.matchesSchool(c.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Parent-Teacher Contact Report',
    titleUr: 'والدین اساتذہ رابطہ رپورٹ',
    headersEn: const <String>[
      'Date',
      'Parent Name',
      'Student Name',
      'Method',
      'Follow-up Required',
    ],
    headersUr: const <String>[
      'تاریخ',
      'والدین کا نام',
      'طالب علم کا نام',
      'طریقہ',
      'پیروی درکار ہے',
    ],
    rows: <List<String>>[
      for (final ParentContactModel c in filtered)
        <String>[
          _d.format(c.contactDate),
          c.parentName,
          c.studentName,
          c.contactMethod.name,
          c.followUpRequired ? 'Yes' : 'No',
        ],
    ],
  );
}

ReportTable buildAdvertisementTable(List<AdvertisementCampaignModel> items, ReportFilter filter) {
  final List<AdvertisementCampaignModel> filtered = items
      .where((a) => filter.matchesDate(a.activityDate) && filter.matchesSchool(a.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Advertisement Campaign Report',
    titleUr: 'تشہیری مہم رپورٹ',
    headersEn: const <String>['Date', 'Title', 'Type', 'Location', 'Quantity'],
    headersUr: const <String>['تاریخ', 'عنوان', 'قسم', 'مقام', 'تعداد'],
    rows: <List<String>>[
      for (final AdvertisementCampaignModel a in filtered)
        <String>[
          _d.format(a.activityDate),
          a.campaignTitle,
          a.advertisementType.name,
          a.location ?? '',
          '${a.quantity}',
        ],
    ],
  );
}

ReportTable buildSocialMediaTable(List<SocialMediaCampaignModel> items, ReportFilter filter) {
  final List<SocialMediaCampaignModel> filtered = items
      .where((a) => filter.matchesDate(a.postDate) && filter.matchesSchool(a.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Social Media Campaign Report',
    titleUr: 'سوشل میڈیا مہم رپورٹ',
    headersEn: const <String>['Date', 'Title', 'Platform', 'Reach', 'Engagement'],
    headersUr: const <String>['تاریخ', 'عنوان', 'پلیٹ فارم', 'رسائی', 'مشغولیت'],
    rows: <List<String>>[
      for (final SocialMediaCampaignModel a in filtered)
        <String>[
          _d.format(a.postDate),
          a.campaignTitle,
          a.platform.name,
          a.reach == null ? '' : '${a.reach}',
          a.engagement == null ? '' : '${a.engagement}',
        ],
    ],
  );
}

ReportTable buildTextbookTable(List<TextbookDistributionModel> items, ReportFilter filter) {
  final List<TextbookDistributionModel> filtered = items
      .where((t) => filter.matchesDate(t.distributionDate) && filter.matchesSchool(t.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Textbook Distribution Report',
    titleUr: 'نصابی کتب کی تقسیم رپورٹ',
    headersEn: const <String>[
      'Date',
      'Academic Year',
      'Class/Grade',
      'Required',
      'Available',
      'Distributed',
      'Shortage',
    ],
    headersUr: const <String>[
      'تاریخ',
      'تعلیمی سال',
      'جماعت',
      'درکار',
      'دستیاب',
      'تقسیم شدہ',
      'کمی',
    ],
    rows: <List<String>>[
      for (final TextbookDistributionModel t in filtered)
        <String>[
          _d.format(t.distributionDate),
          t.academicYear,
          t.classGrade ?? '',
          '${t.booksRequired}',
          '${t.booksAvailable}',
          '${t.booksDistributed}',
          '${t.shortage}',
        ],
    ],
  );
}

ReportTable buildClusterMeetingTable(List<ClusterMeetingModel> items, ReportFilter filter) {
  final List<ClusterMeetingModel> filtered = items
      .where((m) => filter.matchesDate(m.meetingDate) && filter.matchesSchool(m.schoolId ?? ''))
      .toList();
  return ReportTable(
    titleEn: 'Cluster Meetings Report',
    titleUr: 'کلسٹر اجلاس رپورٹ',
    headersEn: const <String>['Date', 'Venue', 'Chairperson', 'Participants', 'Status'],
    headersUr: const <String>['تاریخ', 'مقام', 'صدارت کنندہ', 'شرکاء', 'حیثیت'],
    rows: <List<String>>[
      for (final ClusterMeetingModel m in filtered)
        <String>[
          _d.format(m.meetingDate),
          m.venue ?? '',
          m.chairperson ?? '',
          '${m.participantsCount}',
          m.status.name,
        ],
    ],
  );
}

ReportTable buildStatementTable(List<StatementModel> items, ReportFilter filter) {
  final List<StatementModel> filtered = items
      .where((s) => filter.matchesDate(s.periodStart) && filter.matchesSchool(s.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Statements Report',
    titleUr: 'گوشوارہ جات رپورٹ',
    headersEn: const <String>['Period Start', 'Type', 'Period', 'Status'],
    headersUr: const <String>['مدت کا آغاز', 'قسم', 'مدت', 'حیثیت'],
    rows: <List<String>>[
      for (final StatementModel s in filtered)
        <String>[_d.format(s.periodStart), s.statementType, s.period, s.status.name],
    ],
  );
}

ReportTable buildSchoolFunctionalityTable(
  List<SchoolFunctionalityModel> items,
  ReportFilter filter,
) {
  final List<SchoolFunctionalityModel> filtered = items
      .where((f) => filter.matchesDate(f.assessmentDate) && filter.matchesSchool(f.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'School Functionality Report',
    titleUr: 'سکول کی فعالیت رپورٹ',
    headersEn: const <String>[
      'Date',
      'Teachers Present',
      'Students Present',
      'Classes Conducted',
      'Overall Status',
    ],
    headersUr: const <String>[
      'تاریخ',
      'حاضر اساتذہ',
      'حاضر طلباء',
      'کلاسز منعقد ہوئیں',
      'مجموعی حیثیت',
    ],
    rows: <List<String>>[
      for (final SchoolFunctionalityModel f in filtered)
        <String>[
          _d.format(f.assessmentDate),
          '${f.teachersPresent}/${f.teachersTotal}',
          '${f.studentsPresent}/${f.studentsTotal}',
          f.classesConducted ? 'Yes' : 'No',
          f.overallStatus.name,
        ],
    ],
  );
}

ReportTable buildSchoolOpeningTable(List<SchoolOpeningModel> items, ReportFilter filter) {
  final List<SchoolOpeningModel> filtered = items
      .where((o) => filter.matchesDate(o.checkDate) && filter.matchesSchool(o.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Keeping Schools Open Report',
    titleUr: 'سکولوں کو کھلا رکھنے کی رپورٹ',
    headersEn: const <String>[
      'Date',
      'Open',
      'Teachers Present',
      'Students Present',
      'Reason If Closed',
    ],
    headersUr: const <String>['تاریخ', 'کھلا ہے', 'حاضر اساتذہ', 'حاضر طلباء', 'بند ہونے کی وجہ'],
    rows: <List<String>>[
      for (final SchoolOpeningModel o in filtered)
        <String>[
          _d.format(o.checkDate),
          o.isOpen ? 'Yes' : 'No',
          '${o.teachersPresent}',
          '${o.studentsPresent}',
          o.reasonIfClosed ?? '',
        ],
    ],
  );
}

ReportTable buildCleanlinessTable(List<CleanlinessModel> items, ReportFilter filter) {
  final List<CleanlinessModel> filtered = items
      .where((c) => filter.matchesDate(c.inspectionDate) && filter.matchesSchool(c.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Cleanliness Inspection Report',
    titleUr: 'صفائی معائنہ رپورٹ',
    headersEn: const <String>['Date', 'Score', 'Toilets Clean', 'Waste Managed Properly'],
    headersUr: const <String>['تاریخ', 'سکور', 'بیت الخلاء صاف ہیں', 'کچرے کا مناسب انتظام'],
    rows: <List<String>>[
      for (final CleanlinessModel c in filtered)
        <String>[
          _d.format(c.inspectionDate),
          '${(c.score * 100).round()}%',
          c.toiletsClean ? 'Yes' : 'No',
          c.wasteManagedProperly ? 'Yes' : 'No',
        ],
    ],
  );
}

ReportTable buildPlantationTable(List<PlantationModel> items, ReportFilter filter) {
  final List<PlantationModel> filtered = items
      .where((p) => filter.matchesDate(p.plantationDate) && filter.matchesSchool(p.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'Tree Plantation Report',
    titleUr: 'شجر کاری رپورٹ',
    headersEn: const <String>['Date', 'Trees Planted', 'Students Involved', 'Survival Rate'],
    headersUr: const <String>['تاریخ', 'لگائے گئے پودے', 'شریک طلباء', 'بقا کی شرح'],
    rows: <List<String>>[
      for (final PlantationModel p in filtered)
        <String>[
          _d.format(p.plantationDate),
          '${p.treesPlanted}',
          '${p.studentsInvolved}',
          p.survivalRatePercent == null ? '' : '${p.survivalRatePercent}%',
        ],
    ],
  );
}

ReportTable buildEceMonitoringTable(List<EceMonitoringModel> items, ReportFilter filter) {
  final List<EceMonitoringModel> filtered = items
      .where((e) => filter.matchesDate(e.visitDate) && filter.matchesSchool(e.schoolId))
      .toList();
  return ReportTable(
    titleEn: 'ECE Room Monitoring Report',
    titleUr: 'ای سی ای روم نگرانی رپورٹ',
    headersEn: const <String>['Date', 'Children Present', 'Children Enrolled', 'Status'],
    headersUr: const <String>['تاریخ', 'حاضر بچے', 'داخل شدہ بچے', 'حیثیت'],
    rows: <List<String>>[
      for (final EceMonitoringModel e in filtered)
        <String>[
          _d.format(e.visitDate),
          '${e.childrenPresent}',
          '${e.childrenEnrolled}',
          e.status.name,
        ],
    ],
  );
}
