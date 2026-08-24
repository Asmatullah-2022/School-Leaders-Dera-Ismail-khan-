import 'dart:typed_data';

import 'package:intl/intl.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../core/utils/csv_export_helper.dart';
import '../../../core/utils/pdf_bilingual_helper.dart';
import '../domain/report_table.dart';

/// Turns a [ReportTable] into shareable bytes. Kept free of Firestore and
/// widget dependencies so it can be exercised directly in tests.
class ReportExportService {
  const ReportExportService();

  /// Chooses the header row for the requested language; bilingual reports
  /// pair each column as `English — اردو` so one printed table serves both
  /// audiences (spec §38).
  List<String> headersFor(ReportTable table, ReportLanguage language) {
    switch (language) {
      case ReportLanguage.english:
        return table.headersEn;
      case ReportLanguage.urdu:
        return <String>[
          for (int i = 0; i < table.headersEn.length; i++)
            i < table.headersUr.length ? table.headersUr[i] : table.headersEn[i],
        ];
      case ReportLanguage.bilingual:
        return <String>[
          for (int i = 0; i < table.headersEn.length; i++)
            bilingualHeader(
              table.headersEn[i],
              i < table.headersUr.length ? table.headersUr[i] : null,
            ),
        ];
    }
  }

  String titleFor(ReportTable table, ReportLanguage language) => switch (language) {
    ReportLanguage.english => table.titleEn,
    ReportLanguage.urdu => table.titleUr,
    ReportLanguage.bilingual => '${table.titleEn} — ${table.titleUr}',
  };

  String buildCsvString(ReportTable table, ReportLanguage language) {
    return buildCsv(headers: headersFor(table, language), rows: table.rows);
  }

  Future<Uint8List> buildPdfBytes(ReportTable table, ReportLanguage language) async {
    final pw.Document doc = await buildReportDocument(
      titleEn: table.titleEn,
      titleUr: table.titleUr,
      headers: headersFor(table, language),
      rows: table.rows,
      language: language,
      generatedOn: 'Generated: ${DateFormat('yyyy-MM-dd HH:mm').format(DateTime.now())}',
    );
    return doc.save();
  }

  /// Filename stem used for both share sheets and Storage uploads.
  String fileStem(ReportTable table) {
    final String slug = table.titleEn.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]+'), '_');
    return '${slug}_${DateFormat('yyyyMMdd_HHmm').format(DateTime.now())}';
  }
}
