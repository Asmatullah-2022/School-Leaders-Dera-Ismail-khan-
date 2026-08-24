import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:school_leaders_di_khan/core/utils/csv_export_helper.dart';
import 'package:school_leaders_di_khan/core/utils/pdf_bilingual_helper.dart';
import 'package:school_leaders_di_khan/features/reports_center/data/report_adapters.dart';
import 'package:school_leaders_di_khan/features/reports_center/data/report_export_service.dart';
import 'package:school_leaders_di_khan/features/reports_center/domain/report_module.dart';
import 'package:school_leaders_di_khan/features/reports_center/domain/report_table.dart';
import 'package:school_leaders_di_khan/features/school_problems/data/models/school_problem_model.dart';

SchoolProblemModel _problem({
  required String id,
  required DateTime reported,
  String schoolId = 's1',
}) {
  return SchoolProblemModel(
    id: id,
    schoolId: schoolId,
    clusterId: 'cl',
    circleId: 'ci',
    subDivisionId: 'sd',
    districtId: 'd',
    title: 'Problem $id',
    category: ProblemCategory.water,
    description: 'desc',
    dateReported: reported,
    reportedByUid: 'u',
    reportedByName: 'Reporter',
    createdAt: reported,
    updatedAt: reported,
    createdBy: 'u',
  );
}

const ReportTable _sampleTable = ReportTable(
  titleEn: 'Sample Report',
  titleUr: 'نمونہ رپورٹ',
  headersEn: <String>['Name', 'Count'],
  headersUr: <String>['نام', 'تعداد'],
  rows: <List<String>>[
    <String>['Alpha', '1'],
    <String>['بیٹا', '2'],
  ],
);

void main() {
  const ReportExportService service = ReportExportService();

  group('ReportFilter', () {
    final DateTime jan10 = DateTime(2026, 1, 10);

    test('includes records inside the range', () {
      const ReportFilter f = ReportFilter(module: ReportModule.schoolProblems);
      expect(f.matchesDate(jan10), isTrue);
    });

    test('excludes records before the from-date', () {
      final ReportFilter f = ReportFilter(
        module: ReportModule.schoolProblems,
        fromDate: DateTime(2026, 1, 15),
      );
      expect(f.matchesDate(jan10), isFalse);
    });

    test('to-date is inclusive of the whole end day', () {
      final ReportFilter f = ReportFilter(
        module: ReportModule.schoolProblems,
        toDate: DateTime(2026, 1, 10),
      );
      expect(f.matchesDate(DateTime(2026, 1, 10, 23, 30)), isTrue);
      expect(f.matchesDate(DateTime(2026, 1, 11, 0, 1)), isFalse);
    });

    test('school filter narrows to a single school, null means all', () {
      const ReportFilter all = ReportFilter(module: ReportModule.schoolProblems);
      const ReportFilter one = ReportFilter(module: ReportModule.schoolProblems, schoolId: 's1');
      expect(all.matchesSchool('anything'), isTrue);
      expect(one.matchesSchool('s1'), isTrue);
      expect(one.matchesSchool('s2'), isFalse);
    });
  });

  group('report adapters', () {
    test('school problem adapter applies date and school filters', () {
      final List<SchoolProblemModel> items = <SchoolProblemModel>[
        _problem(id: 'a', reported: DateTime(2026, 1, 5)),
        _problem(id: 'b', reported: DateTime(2026, 2, 5)),
        _problem(id: 'c', reported: DateTime(2026, 1, 20), schoolId: 's2'),
      ];
      final ReportTable table = buildSchoolProblemTable(
        items,
        ReportFilter(
          module: ReportModule.schoolProblems,
          fromDate: DateTime(2026, 1, 1),
          toDate: DateTime(2026, 1, 31),
          schoolId: 's1',
        ),
      );
      expect(table.rows.length, 1);
      expect(table.rows.single, contains('Problem a'));
    });

    test('header counts match the width of every emitted row', () {
      final ReportTable table = buildSchoolProblemTable(<SchoolProblemModel>[
        _problem(id: 'a', reported: DateTime(2026, 1, 5)),
      ], const ReportFilter(module: ReportModule.schoolProblems));
      expect(table.headersUr.length, table.headersEn.length);
      for (final List<String> row in table.rows) {
        expect(row.length, table.headersEn.length);
      }
    });
  });

  group('ReportExportService headers', () {
    test('english mode uses English headers', () {
      expect(service.headersFor(_sampleTable, ReportLanguage.english), <String>['Name', 'Count']);
    });

    test('urdu mode uses Urdu headers', () {
      expect(service.headersFor(_sampleTable, ReportLanguage.urdu), <String>['نام', 'تعداد']);
    });

    test('bilingual mode pairs both scripts per column', () {
      expect(service.headersFor(_sampleTable, ReportLanguage.bilingual), <String>[
        'Name — نام',
        'Count — تعداد',
      ]);
    });

    test('falls back to the English header when an Urdu one is missing', () {
      const ReportTable ragged = ReportTable(
        titleEn: 'T',
        titleUr: 'ٹ',
        headersEn: <String>['A', 'B'],
        headersUr: <String>['ا'],
        rows: <List<String>>[],
      );
      expect(service.headersFor(ragged, ReportLanguage.urdu), <String>['ا', 'B']);
      expect(service.headersFor(ragged, ReportLanguage.bilingual), <String>['A — ا', 'B']);
    });
  });

  group('CSV export', () {
    test('emits a header row followed by data rows', () {
      final String csv = service.buildCsvString(_sampleTable, ReportLanguage.english);
      final List<String> lines = csv.split('\r\n');
      expect(lines.first, contains('Name'));
      expect(lines[1], contains('Alpha'));
      expect(lines[2], contains('بیٹا'));
    });

    test('prepends a UTF-8 BOM so Excel renders Urdu correctly', () {
      final String csv = buildCsv(headers: <String>['نام'], rows: <List<dynamic>>[]);
      expect(csv.codeUnitAt(0), 0xFEFF);
    });

    test('BOM can be disabled', () {
      final String csv = buildCsv(headers: <String>['a'], rows: <List<dynamic>>[], withBom: false);
      expect(csv.codeUnitAt(0), isNot(0xFEFF));
    });

    test('escapes values containing the delimiter', () {
      final String csv = buildCsv(
        headers: <String>['a', 'b'],
        rows: <List<dynamic>>[
          <dynamic>['has,comma', 'plain'],
        ],
        withBom: false,
      );
      expect(csv, contains('"has,comma"'));
    });
  });

  group('PDF export', () {
    // Fonts are loaded from bundled assets, so the binding must be ready.
    TestWidgetsFlutterBinding.ensureInitialized();

    test('produces a non-empty PDF document for a bilingual report', () async {
      final Uint8List bytes = await service.buildPdfBytes(_sampleTable, ReportLanguage.bilingual);
      expect(bytes.length, greaterThan(1000));
      // PDF files begin with the %PDF- magic number.
      expect(String.fromCharCodes(bytes.take(5)), '%PDF-');
    });

    test('generates without throwing for an empty result set', () async {
      const ReportTable empty = ReportTable(
        titleEn: 'Empty',
        titleUr: 'خالی',
        headersEn: <String>['A'],
        headersUr: <String>['ا'],
        rows: <List<String>>[],
      );
      final Uint8List bytes = await service.buildPdfBytes(empty, ReportLanguage.bilingual);
      expect(bytes, isNotEmpty);
    });
  });

  group('file naming', () {
    test('slugifies the report title', () {
      expect(service.fileStem(_sampleTable), startsWith('sample_report_'));
    });
  });
}
