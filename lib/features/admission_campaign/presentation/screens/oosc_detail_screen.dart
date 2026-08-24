import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/oosc_record_model.dart';
import '../providers/admission_providers.dart';
import '../widgets/oosc_status_chip.dart';
import 'oosc_form_screen.dart';

class OoscDetailScreen extends ConsumerWidget {
  const OoscDetailScreen({super.key, required this.recordId});

  final String recordId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<OoscRecordModel?> recordAsync = ref.watch(ooscByIdProvider(recordId));

    return AppScaffold(
      title: l10n.dashboard_oosc,
      actions: <Widget>[
        recordAsync.maybeWhen(
          data: (OoscRecordModel? r) => r == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute<void>(builder: (_) => OoscFormScreen(existing: r))),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: recordAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (OoscRecordModel? r) {
          if (r == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(r.childName, style: Theme.of(context).textTheme.headlineSmall),
                  OoscStatusChip(status: r.status),
                ],
              ),
              if (r.childNameUrdu != null)
                Text(r.childNameUrdu!, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 16),
              _row(context, l10n.oosc_age, '${r.age}'),
              _row(
                context,
                l10n.oosc_gender,
                r.gender == OoscGender.male ? l10n.oosc_male : l10n.oosc_female,
              ),
              _row(context, l10n.oosc_village, r.village ?? '—'),
              _row(context, l10n.oosc_parentGuardian, r.parentGuardianName ?? '—'),
              _row(context, l10n.oosc_contact, r.contactPhone ?? '—'),
              _row(context, l10n.oosc_previousSchool, r.previousSchool ?? '—'),
              if (r.followUpDate != null)
                _row(context, l10n.oosc_followUpDate, DateFormat.yMMMd().format(r.followUpDate!)),
              if (r.remarks != null) _row(context, l10n.common_remarks, r.remarks!),
              if (r.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    for (final String url in r.evidencePhotoUrls)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
                      ),
                  ],
                ),
              ],
            ],
          );
        },
      ),
    );
  }

  Widget _row(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 140, child: Text(label, style: Theme.of(context).textTheme.bodySmall)),
          Expanded(child: Text(value, style: Theme.of(context).textTheme.bodyLarge)),
        ],
      ),
    );
  }
}
