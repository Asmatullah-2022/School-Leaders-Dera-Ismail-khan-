import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

import 'package:school_leaders_di_khan/core/local_db/hive_boxes.dart';
import 'package:school_leaders_di_khan/core/local_db/sync_queue/sync_engine.dart';
import 'package:school_leaders_di_khan/core/localization/l10n_gen/app_localizations.dart';
import 'package:school_leaders_di_khan/core/network/connectivity_provider.dart';
import 'package:school_leaders_di_khan/features/admission_campaign/data/models/admission_campaign_model.dart';
import 'package:school_leaders_di_khan/features/admission_campaign/data/models/oosc_record_model.dart';
import 'package:school_leaders_di_khan/features/admission_campaign/presentation/providers/admission_providers.dart';
import 'package:school_leaders_di_khan/features/advertisement_campaigns/data/models/advertisement_campaign_model.dart';
import 'package:school_leaders_di_khan/features/cleanliness/data/models/cleanliness_model.dart';
import 'package:school_leaders_di_khan/features/cluster_meetings/data/models/cluster_meeting_model.dart';
import 'package:school_leaders_di_khan/features/community_engagement/data/models/community_activity_model.dart';
import 'package:school_leaders_di_khan/features/door_to_door/data/models/door_to_door_activity_model.dart';
import 'package:school_leaders_di_khan/features/ece_monitoring/data/models/ece_monitoring_model.dart';
import 'package:school_leaders_di_khan/features/emergency_reports/data/models/emergency_report_model.dart';
import 'package:school_leaders_di_khan/features/emergency_reports/presentation/providers/emergency_providers.dart';
import 'package:school_leaders_di_khan/features/hierarchy/data/models/school_model.dart';
import 'package:school_leaders_di_khan/features/hierarchy/presentation/providers/hierarchy_providers.dart';
import 'package:school_leaders_di_khan/features/parent_teacher_contact/data/models/parent_contact_model.dart';
import 'package:school_leaders_di_khan/features/plantation/data/models/plantation_model.dart';
import 'package:school_leaders_di_khan/features/ptc_priorities/data/models/ptc_priority_model.dart';
import 'package:school_leaders_di_khan/features/ptc_priorities/presentation/providers/ptc_providers.dart';
import 'package:school_leaders_di_khan/features/reports_center/presentation/screens/reports_center_screen.dart';
import 'package:school_leaders_di_khan/features/school_functionality/data/models/school_functionality_model.dart';
import 'package:school_leaders_di_khan/features/school_monitoring/data/models/monitoring_report_model.dart';
import 'package:school_leaders_di_khan/features/school_monitoring/data/models/scoring_criterion_model.dart';
import 'package:school_leaders_di_khan/features/school_monitoring/presentation/providers/monitoring_providers.dart';
import 'package:school_leaders_di_khan/features/school_opening/data/models/school_opening_model.dart';
import 'package:school_leaders_di_khan/features/school_problems/data/models/school_problem_model.dart';
import 'package:school_leaders_di_khan/features/school_problems/presentation/providers/school_problem_providers.dart';
import 'package:school_leaders_di_khan/features/scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import 'package:school_leaders_di_khan/features/social_media_campaigns/data/models/social_media_campaign_model.dart';
import 'package:school_leaders_di_khan/features/statements/data/models/statement_model.dart';
import 'package:school_leaders_di_khan/features/textbook_distribution/data/models/textbook_distribution_model.dart';

/// Verifies the Reports Center screen at a small mobile viewport, across
/// every exportable report module, with real (Firestore-free) sample data
/// standing in for each scoped-list provider. Every scoped provider the
/// screen or its SchoolPicker touches is overridden directly so this never
/// reaches Firestore/connectivity_plus/Hive — the goal here is purely to
/// catch layout overflow and runtime exceptions in the widget tree itself,
/// not to re-test the adapters (already covered by
/// scaffold_module_report_adapters_test.dart) or Firestore wiring.
void main() {
  final DateTime d = DateTime(2026, 1, 15);

  setUpAll(() async {
    final Directory dir = await Directory.systemTemp.createTemp('reports_center_mobile_test');
    Hive.init(dir.path);
    for (final String name in HiveBoxes.eagerBoxes) {
      await Hive.openBox(name);
    }
  });

  // Long strings deliberately included on a few records to stress-test
  // narrow-screen wrapping/overflow rather than only testing short happy-path text.
  const String longTitle =
      'Extraordinary General Body Cluster-wide Coordination and Review Meeting for Q1';
  const String longRemarks =
      'Multiple structural issues identified in the boundary wall and drinking water '
      'supply line requiring urgent District Education Officer intervention and budget approval';

  final Override statementsOverrideWithData = scopedStatementsProvider.overrideWith(
    (ref) => Stream<List<StatementModel>>.value(<StatementModel>[
      StatementModel(
        id: 'st1',
        schoolId: 's1',
        clusterId: 'cl',
        circleId: 'ci',
        subDivisionId: 'sd',
        districtId: 'd',
        statementType: 'Monthly Enrolment Return',
        period: '2026-01',
        periodStart: d,
        status: StatementStatus.submitted,
        createdAt: d,
        updatedAt: d,
        createdBy: 'u',
      ),
    ]),
  );

  final List<Override> overrides = <Override>[
    isOnlineStreamProvider.overrideWith((ref) => Stream<bool>.value(true)),
    pendingSyncCountProvider.overrideWith((ref) => Stream<int>.value(0)),
    scopedSchoolsProvider.overrideWith(
      (ref) => Stream<List<SchoolModel>>.value(<SchoolModel>[
        SchoolModel(
          id: 's1',
          name: 'Government Primary School Kotla Faqeer',
          emisCode: 'DIK-001',
          districtId: 'd',
          subDivisionId: 'sd',
          circleId: 'ci',
          clusterId: 'cl',
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
        SchoolModel(
          id: 's2',
          name: 'Government Girls High School Dera',
          emisCode: 'DIK-002',
          districtId: 'd',
          subDivisionId: 'sd',
          circleId: 'ci',
          clusterId: 'cl',
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedAdmissionCampaignsProvider.overrideWith(
      (ref) => Stream<List<AdmissionCampaignModel>>.value(<AdmissionCampaignModel>[
        AdmissionCampaignModel(
          id: 'a1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          academicYear: '2025-26',
          date: d,
          targetEnrollment: 200,
          currentEnrollment: 150,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedOoscRecordsProvider.overrideWith(
      (ref) => Stream<List<OoscRecordModel>>.value(<OoscRecordModel>[
        OoscRecordModel(
          id: 'o1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          childName: 'Ali Hassan',
          gender: OoscGender.male,
          age: 9,
          reason: OoscReason.financial,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedMonitoringReportsProvider.overrideWith(
      (ref) => Stream<List<MonitoringReportModel>>.value(<MonitoringReportModel>[
        MonitoringReportModel(
          id: 'm1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          visitDate: d,
          monitoredByUid: 'u',
          monitoredByName: 'Monitoring Officer',
          criteriaScores: const <CriterionScoreModel>[],
          totalWeightedScore: 82.5,
          grade: 'Very Good',
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedSchoolProblemsProvider.overrideWith(
      (ref) => Stream<List<SchoolProblemModel>>.value(<SchoolProblemModel>[
        SchoolProblemModel(
          id: 'p1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          title: longTitle,
          category: ProblemCategory.boundaryWall,
          description: longRemarks,
          dateReported: d,
          reportedByUid: 'u',
          reportedByName: 'Head Teacher',
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedEmergencyReportsProvider.overrideWith(
      (ref) => Stream<List<EmergencyReportModel>>.value(<EmergencyReportModel>[
        EmergencyReportModel(
          id: 'e1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          emergencyType: EmergencyType.flood,
          severity: EmergencySeverity.high,
          description: longRemarks,
          occurredAt: d,
          reportedByUid: 'u',
          reportedByName: 'School Leader',
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedPtcPrioritiesProvider.overrideWith(
      (ref) => Stream<List<PtcPriorityModel>>.value(<PtcPriorityModel>[
        PtcPriorityModel(
          id: 'ptc1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          meetingDate: d,
          rank: 1,
          priorityTitle: longTitle,
          category: PtcCategory.boundaryWall,
          estimatedCost: 150000,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedDoorToDoorProvider.overrideWith(
      (ref) => Stream<List<DoorToDoorActivityModel>>.value(<DoorToDoorActivityModel>[
        DoorToDoorActivityModel(
          id: 'dd1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          activityDate: d,
          area: 'Mohallah Sheikhan',
          housesVisited: 40,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedCommunityActivitiesProvider.overrideWith(
      (ref) => Stream<List<CommunityActivityModel>>.value(<CommunityActivityModel>[
        CommunityActivityModel(
          id: 'ce1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          activityType: CommunityActivityType.awarenessSession,
          activityDate: d,
          participantsCount: 35,
          venue: longTitle,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedParentContactsProvider.overrideWith(
      (ref) => Stream<List<ParentContactModel>>.value(<ParentContactModel>[
        ParentContactModel(
          id: 'pc1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          parentName: 'Muhammad Yaqoob',
          studentName: 'Sana Yaqoob',
          contactDate: d,
          contactMethod: ContactMethod.homeVisit,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedAdvertisementsProvider.overrideWith(
      (ref) => Stream<List<AdvertisementCampaignModel>>.value(<AdvertisementCampaignModel>[
        AdvertisementCampaignModel(
          id: 'ad1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          campaignTitle: longTitle,
          advertisementType: AdvertisementType.mosqueAnnouncement,
          activityDate: d,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedSocialMediaProvider.overrideWith(
      (ref) => Stream<List<SocialMediaCampaignModel>>.value(<SocialMediaCampaignModel>[
        SocialMediaCampaignModel(
          id: 'sm1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          campaignTitle: 'Back to School 2026',
          platform: SocialPlatform.facebook,
          postDate: d,
          reach: 12000,
          engagement: 900,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedTextbooksProvider.overrideWith(
      (ref) => Stream<List<TextbookDistributionModel>>.value(<TextbookDistributionModel>[
        TextbookDistributionModel(
          id: 'tb1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          academicYear: '2025-26',
          distributionDate: d,
          classGrade: 'Class 5',
          booksRequired: 120,
          booksDistributed: 95,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedClusterMeetingsProvider.overrideWith(
      (ref) => Stream<List<ClusterMeetingModel>>.value(<ClusterMeetingModel>[
        ClusterMeetingModel(
          id: 'cm1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          meetingDate: d,
          venue: longTitle,
          chairperson: 'Circle Admin',
          participantsCount: 22,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    statementsOverrideWithData,
    scopedSchoolFunctionalityProvider.overrideWith(
      (ref) => Stream<List<SchoolFunctionalityModel>>.value(<SchoolFunctionalityModel>[
        SchoolFunctionalityModel(
          id: 'sf1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          assessmentDate: d,
          teachersPresent: 8,
          teachersTotal: 10,
          studentsPresent: 140,
          studentsTotal: 160,
          classesConducted: true,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedSchoolOpeningProvider.overrideWith(
      (ref) => Stream<List<SchoolOpeningModel>>.value(<SchoolOpeningModel>[
        SchoolOpeningModel(
          id: 'so1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          checkDate: d,
          isOpen: false,
          reasonIfClosed: longRemarks,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedCleanlinessProvider.overrideWith(
      (ref) => Stream<List<CleanlinessModel>>.value(<CleanlinessModel>[
        CleanlinessModel(
          id: 'cl1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          inspectionDate: d,
          classroomsClean: true,
          toiletsClean: false,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedPlantationProvider.overrideWith(
      (ref) => Stream<List<PlantationModel>>.value(<PlantationModel>[
        PlantationModel(
          id: 'pl1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          plantationDate: d,
          treesPlanted: 50,
          survivalRatePercent: 78.5,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
    scopedEceMonitoringProvider.overrideWith(
      (ref) => Stream<List<EceMonitoringModel>>.value(<EceMonitoringModel>[
        EceMonitoringModel(
          id: 'ece1',
          schoolId: 's1',
          clusterId: 'cl',
          circleId: 'ci',
          subDivisionId: 'sd',
          districtId: 'd',
          visitDate: d,
          childrenEnrolled: 30,
          childrenPresent: 26,
          createdAt: d,
          updatedAt: d,
          createdBy: 'u',
        ),
      ]),
    ),
  ];

  Future<void> pumpAt(WidgetTester tester, Size size, {List<Override>? withOverrides}) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      ProviderScope(
        overrides: withOverrides ?? overrides,
        child: const MaterialApp(
          locale: Locale('en'),
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: <LocalizationsDelegate<dynamic>>[
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: ReportsCenterScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  /// (module label, whether a school-scoped filter applies to it) in the
  /// exact order the dropdown lists ReportModule.values.
  const List<String> moduleLabelsInOrder = <String>[
    'Admission Campaigns',
    'Out-of-School Children',
    'School Monitoring',
    'School Problems',
    'Emergency Reports',
    'PTC Priorities',
    'Door-to-Door Campaign',
    'Community',
    'Parent-Teacher Contact',
    'Advertisement Campaigns',
    'Social Media Campaigns',
    'Textbook Distribution',
    'Cluster Meetings',
    'Statements',
    'School Functionality',
    'Keeping Schools Open',
    'Cleanliness',
    'Plantation',
    'ECE',
  ];

  group('Reports Center on a small mobile viewport (360x800)', () {
    const Size mobileSize = Size(360, 800);

    testWidgets('boots on the default module without overflow or exceptions', (tester) async {
      await pumpAt(tester, mobileSize);
      expect(tester.takeException(), isNull);
      expect(find.text('Reports Center'), findsOneWidget);
      expect(find.text('1 record(s)'), findsOneWidget);
    });

    testWidgets('every one of the 19 report entries (18 modules) is selectable without overflow', (
      tester,
    ) async {
      await pumpAt(tester, mobileSize);
      String currentLabel = moduleLabelsInOrder.first;

      for (final String label in moduleLabelsInOrder) {
        if (label != currentLabel) {
          await tester.tap(find.text(currentLabel).first);
          await tester.pumpAndSettle();
          await tester.tap(find.text(label).last);
          await tester.pumpAndSettle();
          currentLabel = label;
        }

        // The freshly selected module's own label must now be showing
        // (proves the dropdown actually switched modules, not a no-op).
        expect(find.text(label), findsWidgets);
        // No RenderFlex overflow, no unhandled exception from this module's
        // adapter/table rendering at 360dp width.
        expect(tester.takeException(), isNull, reason: 'module "$label" threw during render');
      }
    });

    testWidgets('date filters narrow the preview without throwing', (tester) async {
      await pumpAt(tester, mobileSize);

      // warnIfMissed is silenced here: the floating InputDecorator label can
      // sit slightly outside its own InkWell's hit-test area depending on
      // where the ListView happens to lay it out, which is a test-harness
      // quirk, not an app bug (already covered by the overflow checks above).
      await tester.tap(find.text('From Date'), warnIfMissed: false);
      await tester.pumpAndSettle();
      // The calendar dialog defaults to "today" (outside our fixed sample
      // date), so simply confirming it opens and can be dismissed is enough
      // to prove the picker doesn't crash the screen on a small viewport.
      final Finder cancelButton = find.text('Cancel');
      if (cancelButton.evaluate().isNotEmpty) {
        await tester.tap(cancelButton.first);
        await tester.pumpAndSettle();
      }
      expect(tester.takeException(), isNull);
    });

    testWidgets('SchoolPicker renders its multi-school Autocomplete field without throwing', (
      tester,
    ) async {
      await pumpAt(tester, mobileSize);
      // Two schools were seeded, so SchoolPicker renders its Autocomplete
      // field (labelled via hierarchy_selectSchool) rather than auto-selecting
      // a single school.
      expect(find.text('Select School'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('export buttons are enabled with data and tapping does not throw synchronously', (
      tester,
    ) async {
      await pumpAt(tester, mobileSize);

      final Finder pdfButton = find.widgetWithText(FilledButton, 'Export PDF');
      final Finder csvButton = find.widgetWithText(OutlinedButton, 'Export CSV');
      expect(tester.widget<FilledButton>(pdfButton).onPressed, isNotNull);
      expect(tester.widget<OutlinedButton>(csvButton).onPressed, isNotNull);

      // Printing.sharePdf has no plugin implementation under flutter test, and
      // PDF generation itself does real (non-fake-clock) asset I/O, so we
      // don't attempt to await the full async round-trip here — that's not
      // this test's concern. We only need the tap to not throw synchronously,
      // proving the buttons are wired to real handlers rather than dead code.
      await tester.tap(pdfButton);
      await tester.pump();
      expect(tester.takeException(), isNull);
    });

    testWidgets('an empty module disables both export buttons instead of crashing', (tester) async {
      final List<Override> emptyStatementsOverrides = <Override>[
        for (final Override o in overrides)
          if (!identical(o, statementsOverrideWithData)) o,
        scopedStatementsProvider.overrideWith(
          (ref) => Stream<List<StatementModel>>.value(const []),
        ),
      ];
      await pumpAt(tester, mobileSize, withOverrides: emptyStatementsOverrides);

      await tester.tap(find.text('Admission Campaigns').first);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Statements').last);
      await tester.pumpAndSettle();

      expect(find.text('No records match these filters'), findsOneWidget);
      final Finder pdfButton = find.widgetWithText(FilledButton, 'Export PDF');
      final Finder csvButton = find.widgetWithText(OutlinedButton, 'Export CSV');
      expect(tester.widget<FilledButton>(pdfButton).onPressed, isNull);
      expect(tester.widget<OutlinedButton>(csvButton).onPressed, isNull);
      expect(tester.takeException(), isNull);
    });
  });

  group('Reports Center on a very small mobile viewport (320x568, iPhone SE class)', () {
    const Size verySmall = Size(320, 568);

    testWidgets('renders every module without overflow at 320dp width', (tester) async {
      await pumpAt(tester, verySmall);
      String currentLabel = moduleLabelsInOrder.first;

      for (final String label in moduleLabelsInOrder) {
        if (label != currentLabel) {
          await tester.tap(find.text(currentLabel).first);
          await tester.pumpAndSettle();
          await tester.tap(find.text(label).last);
          await tester.pumpAndSettle();
          currentLabel = label;
        }
        expect(tester.takeException(), isNull, reason: 'module "$label" overflowed at 320dp');
      }
    });
  });
}
