import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

/// Which language(s) a generated report should render in.
enum ReportLanguage { english, urdu, bilingual }

/// Loads the bundled Latin + Arabic-script fonts once per process. Fonts are
/// shipped as assets (see pubspec) rather than fetched from a CDN so report
/// export still works with no connectivity.
class PdfFonts {
  PdfFonts._(this.latin, this.latinBold, this.urdu, this.urduBold);

  final pw.Font latin;
  final pw.Font latinBold;
  final pw.Font urdu;
  final pw.Font urduBold;

  static PdfFonts? _cached;

  static Future<PdfFonts> load() async {
    final PdfFonts? cached = _cached;
    if (cached != null) return cached;
    final PdfFonts loaded = PdfFonts._(
      pw.Font.ttf(await rootBundle.load('assets/fonts/NotoSans-Regular.ttf')),
      pw.Font.ttf(await rootBundle.load('assets/fonts/NotoSans-Bold.ttf')),
      pw.Font.ttf(await rootBundle.load('assets/fonts/NotoNaskhArabic-Regular.ttf')),
      pw.Font.ttf(await rootBundle.load('assets/fonts/NotoNaskhArabic-Bold.ttf')),
    );
    _cached = loaded;
    return loaded;
  }

  /// Falls back to the Arabic-script face for any glyph the Latin face lacks,
  /// so a mixed-script table cell renders fully instead of showing tofu.
  pw.ThemeData get theme => pw.ThemeData.withFont(
        base: latin,
        bold: latinBold,
        fontFallback: <pw.Font>[urdu, urduBold],
      );
}

/// Builds a bilingual label. The `pdf` package has no automatic
/// bidirectional layout, so Urdu runs must be explicitly marked RTL — this
/// helper is the single place that decides how the two scripts are combined.
pw.Widget bilingualText(
  String en,
  String? ur, {
  required ReportLanguage language,
  required PdfFonts fonts,
  double fontSize = 10,
  bool bold = false,
}) {
  final pw.TextStyle latinStyle = pw.TextStyle(
    font: bold ? fonts.latinBold : fonts.latin,
    fontSize: fontSize,
    fontFallback: <pw.Font>[fonts.urdu],
  );
  final pw.TextStyle urduStyle = pw.TextStyle(
    font: bold ? fonts.urduBold : fonts.urdu,
    fontSize: fontSize,
    fontFallback: <pw.Font>[fonts.latin],
  );

  final bool hasUrdu = ur != null && ur.isNotEmpty;

  switch (language) {
    case ReportLanguage.english:
      return pw.Text(en, style: latinStyle);
    case ReportLanguage.urdu:
      return pw.Directionality(
        textDirection: pw.TextDirection.rtl,
        child: pw.Text(hasUrdu ? ur : en, style: hasUrdu ? urduStyle : latinStyle),
      );
    case ReportLanguage.bilingual:
      if (!hasUrdu) return pw.Text(en, style: latinStyle);
      return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: <pw.Widget>[
          pw.Text(en, style: latinStyle),
          pw.Directionality(
            textDirection: pw.TextDirection.rtl,
            child: pw.Text(ur, style: urduStyle),
          ),
        ],
      );
  }
}

/// Standard report header: district letterhead + report title + generated-on
/// line, shared by every module's export so printed reports look consistent.
pw.Widget reportHeader({
  required String titleEn,
  String? titleUr,
  required String generatedOn,
  required ReportLanguage language,
  required PdfFonts fonts,
}) {
  return pw.Column(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: <pw.Widget>[
      bilingualText(
        'School Leader District Dera Ismail Khan',
        'سکول لیڈر — ضلع ڈیرہ اسماعیل خان',
        language: language,
        fonts: fonts,
        fontSize: 14,
        bold: true,
      ),
      pw.SizedBox(height: 4),
      bilingualText(titleEn, titleUr, language: language, fonts: fonts, fontSize: 12, bold: true),
      pw.SizedBox(height: 2),
      pw.Text(generatedOn, style: pw.TextStyle(font: fonts.latin, fontSize: 8, color: PdfColors.grey700)),
      pw.Divider(thickness: 0.5),
    ],
  );
}

/// Builds the standard table used by every module export.
pw.Widget reportTable({
  required List<String> headers,
  required List<List<String>> rows,
  required PdfFonts fonts,
}) {
  return pw.TableHelper.fromTextArray(
    headers: headers,
    data: rows,
    cellStyle: pw.TextStyle(font: fonts.latin, fontSize: 8, fontFallback: <pw.Font>[fonts.urdu]),
    headerStyle: pw.TextStyle(
      font: fonts.latinBold,
      fontSize: 8,
      fontFallback: <pw.Font>[fonts.urduBold],
    ),
    headerDecoration: const pw.BoxDecoration(color: PdfColors.grey300),
    cellHeight: 18,
    border: pw.TableBorder.all(color: PdfColors.grey400, width: 0.4),
  );
}

/// Assembles a complete single-table report document.
Future<pw.Document> buildReportDocument({
  required String titleEn,
  String? titleUr,
  required List<String> headers,
  required List<List<String>> rows,
  required ReportLanguage language,
  required String generatedOn,
}) async {
  final PdfFonts fonts = await PdfFonts.load();
  final pw.Document doc = pw.Document(theme: fonts.theme);
  doc.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4.landscape,
      margin: const pw.EdgeInsets.all(24),
      build: (pw.Context context) => <pw.Widget>[
        reportHeader(
          titleEn: titleEn,
          titleUr: titleUr,
          generatedOn: generatedOn,
          language: language,
          fonts: fonts,
        ),
        pw.SizedBox(height: 8),
        if (rows.isEmpty)
          pw.Text('No records', style: pw.TextStyle(font: fonts.latin, fontSize: 10))
        else
          reportTable(headers: headers, rows: rows, fonts: fonts),
      ],
    ),
  );
  return doc;
}
