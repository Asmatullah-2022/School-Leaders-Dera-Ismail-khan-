import 'package:flutter_test/flutter_test.dart';
import 'package:school_leaders_di_khan/features/advertisement_campaigns/data/models/advertisement_campaign_model.dart';
import 'package:school_leaders_di_khan/features/cleanliness/data/models/cleanliness_model.dart';
import 'package:school_leaders_di_khan/features/cluster_meetings/data/models/cluster_meeting_model.dart';
import 'package:school_leaders_di_khan/features/community_engagement/data/models/community_activity_model.dart';
import 'package:school_leaders_di_khan/features/door_to_door/data/models/door_to_door_activity_model.dart';
import 'package:school_leaders_di_khan/features/ece_monitoring/data/models/ece_monitoring_model.dart';
import 'package:school_leaders_di_khan/features/parent_teacher_contact/data/models/parent_contact_model.dart';
import 'package:school_leaders_di_khan/features/plantation/data/models/plantation_model.dart';
import 'package:school_leaders_di_khan/features/reports_center/data/report_adapters.dart';
import 'package:school_leaders_di_khan/features/reports_center/domain/report_module.dart';
import 'package:school_leaders_di_khan/features/reports_center/domain/report_table.dart';
import 'package:school_leaders_di_khan/features/school_functionality/data/models/school_functionality_model.dart';
import 'package:school_leaders_di_khan/features/school_opening/data/models/school_opening_model.dart';
import 'package:school_leaders_di_khan/features/social_media_campaigns/data/models/social_media_campaign_model.dart';
import 'package:school_leaders_di_khan/features/statements/data/models/statement_model.dart';
import 'package:school_leaders_di_khan/features/textbook_distribution/data/models/textbook_distribution_model.dart';

/// Every adapter added for the 13 scaffold modules is checked the same way
/// the flagship adapters are in report_export_test.dart: (1) date/school
/// filtering actually narrows the rows, and (2) every emitted row is exactly
/// as wide as the header row, in both languages.
void main() {
  void expectWellFormed(ReportTable table) {
    expect(table.headersUr.length, table.headersEn.length);
    for (final List<String> row in table.rows) {
      expect(row.length, table.headersEn.length);
    }
  }

  group('buildDoorToDoorTable', () {
    DoorToDoorActivityModel item(String id, DateTime date, {String schoolId = 's1'}) =>
        DoorToDoorActivityModel(
          id: id,
          schoolId: schoolId,
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          activityDate: date,
          createdAt: date,
          updatedAt: date,
          createdBy: 'u',
        );

    test('applies date and school filters', () {
      final table = buildDoorToDoorTable(
        <DoorToDoorActivityModel>[
          item('a', DateTime(2026, 1, 5)),
          item('b', DateTime(2026, 2, 5)),
          item('c', DateTime(2026, 1, 20), schoolId: 's2'),
        ],
        ReportFilter(
          module: ReportModule.doorToDoor,
          fromDate: DateTime(2026, 1, 1),
          toDate: DateTime(2026, 1, 31),
          schoolId: 's1',
        ),
      );
      expect(table.rows.length, 1);
    });

    test('rows match header width', () {
      expectWellFormed(
        buildDoorToDoorTable(<DoorToDoorActivityModel>[
          item('a', DateTime(2026, 1, 5)),
        ], const ReportFilter(module: ReportModule.doorToDoor)),
      );
    });
  });

  group('buildCommunityActivityTable', () {
    CommunityActivityModel item(String id, DateTime date, {String schoolId = 's1'}) =>
        CommunityActivityModel(
          id: id,
          schoolId: schoolId,
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          activityType: CommunityActivityType.parentMeeting,
          activityDate: date,
          createdAt: date,
          updatedAt: date,
          createdBy: 'u',
        );

    test('applies date and school filters', () {
      final table = buildCommunityActivityTable(<CommunityActivityModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.communityEngagement, schoolId: 's1'));
      expect(table.rows.length, 1);
    });

    test('rows match header width', () {
      expectWellFormed(
        buildCommunityActivityTable(<CommunityActivityModel>[
          item('a', DateTime(2026, 1, 5)),
        ], const ReportFilter(module: ReportModule.communityEngagement)),
      );
    });
  });

  group('buildParentContactTable', () {
    ParentContactModel item(String id, DateTime date, {String schoolId = 's1'}) =>
        ParentContactModel(
          id: id,
          schoolId: schoolId,
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          parentName: 'Parent $id',
          studentName: 'Student $id',
          contactDate: date,
          contactMethod: ContactMethod.phoneCall,
          createdAt: date,
          updatedAt: date,
          createdBy: 'u',
        );

    test('applies date and school filters', () {
      final table = buildParentContactTable(<ParentContactModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.parentTeacherContact, schoolId: 's1'));
      expect(table.rows.single, contains('Parent a'));
    });

    test('rows match header width', () {
      expectWellFormed(
        buildParentContactTable(<ParentContactModel>[
          item('a', DateTime(2026, 1, 5)),
        ], const ReportFilter(module: ReportModule.parentTeacherContact)),
      );
    });
  });

  group('buildAdvertisementTable', () {
    AdvertisementCampaignModel item(String id, DateTime date, {String schoolId = 's1'}) =>
        AdvertisementCampaignModel(
          id: id,
          schoolId: schoolId,
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          campaignTitle: 'Campaign $id',
          advertisementType: AdvertisementType.banner,
          activityDate: date,
          createdAt: date,
          updatedAt: date,
          createdBy: 'u',
        );

    test('applies date and school filters', () {
      final table = buildAdvertisementTable(<AdvertisementCampaignModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.advertisementCampaigns, schoolId: 's1'));
      expect(table.rows.single, contains('Campaign a'));
    });

    test('rows match header width', () {
      expectWellFormed(
        buildAdvertisementTable(<AdvertisementCampaignModel>[
          item('a', DateTime(2026, 1, 5)),
        ], const ReportFilter(module: ReportModule.advertisementCampaigns)),
      );
    });
  });

  group('buildSocialMediaTable', () {
    SocialMediaCampaignModel item(String id, DateTime date, {String schoolId = 's1'}) =>
        SocialMediaCampaignModel(
          id: id,
          schoolId: schoolId,
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          campaignTitle: 'Post $id',
          platform: SocialPlatform.facebook,
          postDate: date,
          createdAt: date,
          updatedAt: date,
          createdBy: 'u',
        );

    test('applies date and school filters', () {
      final table = buildSocialMediaTable(<SocialMediaCampaignModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.socialMediaCampaigns, schoolId: 's1'));
      expect(table.rows.single, contains('Post a'));
    });

    test('rows match header width and blank reach/engagement render as empty', () {
      final table = buildSocialMediaTable(<SocialMediaCampaignModel>[
        item('a', DateTime(2026, 1, 5)),
      ], const ReportFilter(module: ReportModule.socialMediaCampaigns));
      expectWellFormed(table);
      expect(table.rows.single, contains(''));
    });
  });

  group('buildTextbookTable', () {
    TextbookDistributionModel item(String id, DateTime date, {String schoolId = 's1'}) =>
        TextbookDistributionModel(
          id: id,
          schoolId: schoolId,
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          academicYear: '2025-26',
          distributionDate: date,
          booksRequired: 100,
          booksDistributed: 60,
          createdAt: date,
          updatedAt: date,
          createdBy: 'u',
        );

    test('applies date and school filters', () {
      final table = buildTextbookTable(<TextbookDistributionModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.textbookDistribution, schoolId: 's1'));
      expect(table.rows.length, 1);
    });

    test('shortage column reflects the model getter', () {
      final table = buildTextbookTable(<TextbookDistributionModel>[
        item('a', DateTime(2026, 1, 5)),
      ], const ReportFilter(module: ReportModule.textbookDistribution));
      expectWellFormed(table);
      expect(table.rows.single, contains('40'));
    });
  });

  group('buildClusterMeetingTable', () {
    ClusterMeetingModel item(String id, DateTime date, {String? schoolId}) => ClusterMeetingModel(
      id: id,
      schoolId: schoolId,
      clusterId: 'cl',
      circleId: 'ci',
      subDivisionId: 'sd',
      districtId: 'd',
      meetingDate: date,
      createdAt: date,
      updatedAt: date,
      createdBy: 'u',
    );

    test(
      'applies date filters and excludes cluster-scoped meetings from a school-specific export',
      () {
        final table = buildClusterMeetingTable(<ClusterMeetingModel>[
          item('a', DateTime(2026, 1, 5)),
        ], const ReportFilter(module: ReportModule.clusterMeetings, schoolId: 's1'));
        expect(table.rows, isEmpty);
      },
    );

    test('includes cluster-scoped meetings when no school filter is set', () {
      final table = buildClusterMeetingTable(<ClusterMeetingModel>[
        item('a', DateTime(2026, 1, 5)),
      ], const ReportFilter(module: ReportModule.clusterMeetings));
      expectWellFormed(table);
      expect(table.rows.length, 1);
    });
  });

  group('buildStatementTable', () {
    StatementModel item(String id, DateTime date, {String schoolId = 's1'}) => StatementModel(
      id: id,
      schoolId: schoolId,
      clusterId: 'cl',
      circleId: 'ci',
      subDivisionId: 'sd',
      districtId: 'd',
      statementType: 'enrolment',
      period: '2026-01',
      periodStart: date,
      createdAt: date,
      updatedAt: date,
      createdBy: 'u',
    );

    test('applies date and school filters', () {
      final table = buildStatementTable(<StatementModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.statements, schoolId: 's1'));
      expect(table.rows.single, contains('enrolment'));
    });

    test('rows match header width', () {
      expectWellFormed(
        buildStatementTable(<StatementModel>[
          item('a', DateTime(2026, 1, 5)),
        ], const ReportFilter(module: ReportModule.statements)),
      );
    });
  });

  group('buildSchoolFunctionalityTable', () {
    SchoolFunctionalityModel item(String id, DateTime date, {String schoolId = 's1'}) =>
        SchoolFunctionalityModel(
          id: id,
          schoolId: schoolId,
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          assessmentDate: date,
          teachersPresent: 8,
          teachersTotal: 10,
          createdAt: date,
          updatedAt: date,
          createdBy: 'u',
        );

    test('applies date and school filters', () {
      final table = buildSchoolFunctionalityTable(<SchoolFunctionalityModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.schoolFunctionality, schoolId: 's1'));
      expect(table.rows.single, contains('8/10'));
    });

    test('rows match header width', () {
      expectWellFormed(
        buildSchoolFunctionalityTable(<SchoolFunctionalityModel>[
          item('a', DateTime(2026, 1, 5)),
        ], const ReportFilter(module: ReportModule.schoolFunctionality)),
      );
    });
  });

  group('buildSchoolOpeningTable', () {
    SchoolOpeningModel item(String id, DateTime date, {String schoolId = 's1'}) =>
        SchoolOpeningModel(
          id: id,
          schoolId: schoolId,
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          checkDate: date,
          createdAt: date,
          updatedAt: date,
          createdBy: 'u',
        );

    test('applies date and school filters', () {
      final table = buildSchoolOpeningTable(<SchoolOpeningModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.schoolOpening, schoolId: 's1'));
      expect(table.rows.length, 1);
    });

    test('rows match header width', () {
      expectWellFormed(
        buildSchoolOpeningTable(<SchoolOpeningModel>[
          item('a', DateTime(2026, 1, 5)),
        ], const ReportFilter(module: ReportModule.schoolOpening)),
      );
    });
  });

  group('buildCleanlinessTable', () {
    CleanlinessModel item(String id, DateTime date, {String schoolId = 's1'}) => CleanlinessModel(
      id: id,
      schoolId: schoolId,
      clusterId: 'cl',
      circleId: 'ci',
      subDivisionId: 'sd',
      districtId: 'd',
      inspectionDate: date,
      classroomsClean: true,
      toiletsClean: true,
      createdAt: date,
      updatedAt: date,
      createdBy: 'u',
    );

    test('applies date and school filters', () {
      final table = buildCleanlinessTable(<CleanlinessModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.cleanliness, schoolId: 's1'));
      expect(table.rows.length, 1);
    });

    test('score column reflects the model getter', () {
      final table = buildCleanlinessTable(<CleanlinessModel>[
        item('a', DateTime(2026, 1, 5)),
      ], const ReportFilter(module: ReportModule.cleanliness));
      expectWellFormed(table);
      expect(table.rows.single, contains('20%'));
    });
  });

  group('buildPlantationTable', () {
    PlantationModel item(String id, DateTime date, {String schoolId = 's1'}) => PlantationModel(
      id: id,
      schoolId: schoolId,
      clusterId: 'cl',
      circleId: 'ci',
      subDivisionId: 'sd',
      districtId: 'd',
      plantationDate: date,
      treesPlanted: 25,
      createdAt: date,
      updatedAt: date,
      createdBy: 'u',
    );

    test('applies date and school filters', () {
      final table = buildPlantationTable(<PlantationModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.plantation, schoolId: 's1'));
      expect(table.rows.single, contains('25'));
    });

    test('rows match header width', () {
      expectWellFormed(
        buildPlantationTable(<PlantationModel>[
          item('a', DateTime(2026, 1, 5)),
        ], const ReportFilter(module: ReportModule.plantation)),
      );
    });
  });

  group('buildEceMonitoringTable', () {
    EceMonitoringModel item(String id, DateTime date, {String schoolId = 's1'}) =>
        EceMonitoringModel(
          id: id,
          schoolId: schoolId,
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          visitDate: date,
          childrenEnrolled: 30,
          childrenPresent: 22,
          createdAt: date,
          updatedAt: date,
          createdBy: 'u',
        );

    test('applies date and school filters', () {
      final table = buildEceMonitoringTable(<EceMonitoringModel>[
        item('a', DateTime(2026, 1, 5)),
        item('b', DateTime(2026, 2, 5), schoolId: 's2'),
      ], const ReportFilter(module: ReportModule.eceMonitoring, schoolId: 's1'));
      expect(table.rows.single, contains('22'));
    });

    test('rows match header width', () {
      expectWellFormed(
        buildEceMonitoringTable(<EceMonitoringModel>[
          item('a', DateTime(2026, 1, 5)),
        ], const ReportFilter(module: ReportModule.eceMonitoring)),
      );
    });
  });
}
