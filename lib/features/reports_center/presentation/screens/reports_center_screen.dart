import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:printing/printing.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/utils/pdf_bilingual_helper.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../hierarchy/data/models/school_model.dart';
import '../../../hierarchy/presentation/widgets/school_picker.dart';
import '../../domain/report_module.dart';
import '../../domain/report_table.dart';
import '../providers/report_providers.dart';

class ReportsCenterScreen extends ConsumerStatefulWidget {
  const ReportsCenterScreen({super.key});

  @override
  ConsumerState<ReportsCenterScreen> createState() => _ReportsCenterScreenState();
}

class _ReportsCenterScreenState extends ConsumerState<ReportsCenterScreen> {
  ReportModule _module = ReportModule.admissionCampaigns;
  ReportLanguage _language = ReportLanguage.bilingual;
  DateTime? _fromDate;
  DateTime? _toDate;
  SchoolModel? _school;
  bool _isExporting = false;

  ReportFilter get _filter =>
      ReportFilter(module: _module, fromDate: _fromDate, toDate: _toDate, schoolId: _school?.id);

  String _moduleLabel(AppLocalizations l10n, ReportModule m) => switch (m) {
    ReportModule.admissionCampaigns => l10n.reports_module_admission,
    ReportModule.oosc => l10n.reports_module_oosc,
    ReportModule.monitoringReports => l10n.reports_module_monitoring,
    ReportModule.schoolProblems => l10n.reports_module_problems,
    ReportModule.emergencyReports => l10n.reports_module_emergency,
    ReportModule.ptcPriorities => l10n.reports_module_ptc,
  };

  String _languageLabel(AppLocalizations l10n, ReportLanguage lang) => switch (lang) {
    ReportLanguage.english => l10n.reports_language_english,
    ReportLanguage.urdu => l10n.reports_language_urdu,
    ReportLanguage.bilingual => l10n.reports_language_bilingual,
  };

  Future<void> _exportPdf(ReportTable table) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    setState(() => _isExporting = true);
    try {
      final service = ref.read(reportExportServiceProvider);
      final Uint8List bytes = await service.buildPdfBytes(table, _language);
      await Printing.sharePdf(bytes: bytes, filename: '${service.fileStem(table)}.pdf');
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(l10n.reports_exportFailed)));
    } finally {
      if (mounted) setState(() => _isExporting = false);
    }
  }

  Future<void> _exportCsv(ReportTable table) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    setState(() => _isExporting = true);
    try {
      final service = ref.read(reportExportServiceProvider);
      final String csv = service.buildCsvString(table, _language);
      // Printing's share sheet handles arbitrary bytes, so CSV reuses the same
      // path as PDF rather than depending on a second sharing plugin.
      await Printing.sharePdf(
        bytes: Uint8List.fromList(csv.codeUnits),
        filename: '${service.fileStem(table)}.csv',
      );
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(l10n.reports_exportFailed)));
    } finally {
      if (mounted) setState(() => _isExporting = false);
    }
  }

  Future<void> _pickDate({required bool isFrom}) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: (isFrom ? _fromDate : _toDate) ?? DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2100),
    );
    if (picked == null) return;
    setState(() {
      if (isFrom) {
        _fromDate = picked;
      } else {
        _toDate = picked;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ReportTable table = ref.watch(reportTableProvider(_filter));

    return AppScaffold(
      title: l10n.reports_title,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          DropdownButtonFormField<ReportModule>(
            initialValue: _module,
            decoration: InputDecoration(labelText: l10n.reports_selectModule),
            items: ReportModule.values
                .map(
                  (m) =>
                      DropdownMenuItem<ReportModule>(value: m, child: Text(_moduleLabel(l10n, m))),
                )
                .toList(),
            onChanged: (v) => setState(() => _module = v ?? _module),
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<ReportLanguage>(
            initialValue: _language,
            decoration: InputDecoration(labelText: l10n.reports_language),
            items: ReportLanguage.values
                .map(
                  (lang) => DropdownMenuItem<ReportLanguage>(
                    value: lang,
                    child: Text(_languageLabel(l10n, lang)),
                  ),
                )
                .toList(),
            onChanged: (v) => setState(() => _language = v ?? _language),
          ),
          const SizedBox(height: 20),
          SectionHeader(title: l10n.common_filter),
          Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () => _pickDate(isFrom: true),
                  child: InputDecorator(
                    decoration: InputDecoration(labelText: l10n.reports_fromDate),
                    child: Text(_fromDate != null ? DateFormat.yMMMd().format(_fromDate!) : '—'),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: InkWell(
                  onTap: () => _pickDate(isFrom: false),
                  child: InputDecorator(
                    decoration: InputDecoration(labelText: l10n.reports_toDate),
                    child: Text(_toDate != null ? DateFormat.yMMMd().format(_toDate!) : '—'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SchoolPicker(
            selectedSchoolId: _school?.id,
            onChanged: (SchoolModel s) => setState(() => _school = s),
          ),
          if (_school != null)
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: TextButton.icon(
                onPressed: () => setState(() => _school = null),
                icon: const Icon(Icons.clear, size: 16),
                label: Text(l10n.reports_allSchools),
              ),
            ),
          const SizedBox(height: 20),
          SectionHeader(title: l10n.reports_preview),
          Text(
            l10n.reports_recordCount(table.rows.length),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          if (table.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                l10n.reports_noData,
                textAlign: TextAlign.center,
                style: TextStyle(color: Theme.of(context).colorScheme.outline),
              ),
            )
          else
            _PreviewTable(table: table, language: _language),
          const SizedBox(height: 24),
          Row(
            children: <Widget>[
              Expanded(
                child: FilledButton.icon(
                  onPressed: (_isExporting || table.isEmpty) ? null : () => _exportPdf(table),
                  icon: const Icon(Icons.picture_as_pdf_outlined),
                  label: Text(l10n.reports_exportPdf),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: (_isExporting || table.isEmpty) ? null : () => _exportCsv(table),
                  icon: const Icon(Icons.table_chart_outlined),
                  label: Text(l10n.reports_exportCsv),
                ),
              ),
            ],
          ),
          if (_isExporting)
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
    );
  }
}

/// On-screen preview of the first few rows, so a user can sanity-check the
/// filters before generating a file.
class _PreviewTable extends ConsumerWidget {
  const _PreviewTable({required this.table, required this.language});

  final ReportTable table;
  final ReportLanguage language;

  static const int _previewRowLimit = 10;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> headers = ref.read(reportExportServiceProvider).headersFor(table, language);
    final List<List<String>> rows = table.rows.take(_previewRowLimit).toList();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowHeight: 40,
        dataRowMinHeight: 36,
        dataRowMaxHeight: 48,
        columns: <DataColumn>[
          for (final String h in headers)
            DataColumn(label: Text(h, style: const TextStyle(fontSize: 11))),
        ],
        rows: <DataRow>[
          for (final List<String> row in rows)
            DataRow(
              cells: <DataCell>[
                for (final String cell in row)
                  DataCell(Text(cell, style: const TextStyle(fontSize: 11))),
              ],
            ),
        ],
      ),
    );
  }
}
