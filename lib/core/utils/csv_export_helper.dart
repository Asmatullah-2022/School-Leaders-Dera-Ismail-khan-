import 'package:csv/csv.dart';

/// Builds CSV text from a header row + data rows. Kept dependency-light and
/// pure so it can be unit tested without touching Firestore or the file
/// system.
///
/// A UTF-8 BOM is prepended so Excel opens Urdu column headers correctly
/// instead of showing mojibake — without it, Excel assumes the system
/// codepage for .csv files.
String buildCsv({
  required List<String> headers,
  required List<List<dynamic>> rows,
  bool withBom = true,
}) {
  final List<List<dynamic>> table = <List<dynamic>>[headers, ...rows];
  final String csv = const CsvEncoder().convert(table);
  return withBom ? '﻿$csv' : csv;
}

/// Renders a bilingual header cell as `English — اردو`, matching the
/// bilingual report style used by the PDF exporter.
String bilingualHeader(String en, String? ur) => (ur == null || ur.isEmpty) ? en : '$en — $ur';
