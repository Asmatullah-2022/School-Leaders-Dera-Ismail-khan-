import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/admission_campaign_model.dart';
import '../../data/models/oosc_record_model.dart';
import '../providers/admission_providers.dart';
import '../widgets/achievement_gauge.dart';
import '../widgets/oosc_status_chip.dart';
import 'admission_campaign_form_screen.dart';

class AdmissionCampaignDetailScreen extends ConsumerWidget {
  const AdmissionCampaignDetailScreen({super.key, required this.campaignId});

  final String campaignId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<AdmissionCampaignModel?> campaignAsync = ref.watch(
      admissionCampaignByIdProvider(campaignId),
    );

    return AppScaffold(
      title: l10n.more_admission,
      actions: <Widget>[
        campaignAsync.maybeWhen(
          data: (AdmissionCampaignModel? c) => c == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => AdmissionCampaignFormScreen(existing: c),
                    ),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: campaignAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (AdmissionCampaignModel? c) {
          if (c == null) return EmptyState(message: l10n.common_error_notFound);
          final AsyncValue<List<OoscRecordModel>> linkedOosc = ref.watch(
            ooscByCampaignProvider(c.id),
          );
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Text(c.academicYear, style: Theme.of(context).textTheme.headlineSmall),
              Text(DateFormat.yMMMd().format(c.date), style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 16),
              AchievementGauge(
                target: c.targetEnrollment,
                achieved: c.currentEnrollment,
                percentage: c.achievementPercentage,
              ),
              const Divider(height: 32),
              _statGrid(context, l10n, c),
              const Divider(height: 32),
              if (c.remarks != null) ...<Widget>[
                Text(l10n.common_remarks, style: Theme.of(context).textTheme.titleSmall),
                Text(c.remarks!),
                const SizedBox(height: 12),
              ],
              if (c.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    for (final String url in c.evidencePhotoUrls)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
                      ),
                  ],
                ),
                const Divider(height: 32),
              ],
              Text(l10n.admission_linkedOosc, style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 8),
              linkedOosc.when(
                loading: () => const LoadingIndicator(),
                error: (_, _) => const SizedBox.shrink(),
                data: (List<OoscRecordModel> records) {
                  if (records.isEmpty) {
                    return Text(l10n.oosc_noRecords, style: Theme.of(context).textTheme.bodySmall);
                  }
                  return Column(
                    children: <Widget>[
                      for (final OoscRecordModel r in records)
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(r.childName),
                          trailing: OoscStatusChip(status: r.status),
                        ),
                    ],
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _statGrid(BuildContext context, AppLocalizations l10n, AdmissionCampaignModel c) {
    final List<(String, String)> rows = <(String, String)>[
      (l10n.admission_newAdmissionsBoys, '${c.newAdmissionsBoys}'),
      (l10n.admission_newAdmissionsGirls, '${c.newAdmissionsGirls}'),
      (l10n.admission_newAdmissionsTotal, '${c.newAdmissionsTotal}'),
      (l10n.admission_ooscIdentified, '${c.ooscIdentified}'),
      (l10n.admission_ooscReenrolled, '${c.ooscReenrolled}'),
      (l10n.admission_doorToDoorVisits, '${c.doorToDoorVisits}'),
      (l10n.admission_parentMeetings, '${c.parentMeetings}'),
      (l10n.admission_communityMeetings, '${c.communityMeetings}'),
      (l10n.admission_banners, '${c.banners}'),
      (l10n.admission_posters, '${c.posters}'),
      (l10n.admission_socialMediaActivities, '${c.socialMediaActivities}'),
      (l10n.admission_freeTextbooksDistributed, '${c.freeTextbooksDistributed}'),
    ];
    return Column(
      children: <Widget>[
        for (final (String label, String value) in rows)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: <Widget>[
                Expanded(child: Text(label, style: Theme.of(context).textTheme.bodyMedium)),
                Text(
                  value,
                  style: Theme.of(context).textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
