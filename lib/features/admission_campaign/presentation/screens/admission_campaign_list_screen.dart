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
import '../providers/admission_providers.dart';
import '../widgets/achievement_gauge.dart';
import 'admission_campaign_detail_screen.dart';
import 'admission_campaign_form_screen.dart';
import 'oosc_list_screen.dart';

class AdmissionCampaignListScreen extends ConsumerWidget {
  const AdmissionCampaignListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<AdmissionCampaignModel>> campaignsAsync = ref.watch(scopedAdmissionCampaignsProvider);

    return AppScaffold(
      title: l10n.more_admission,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.person_search_outlined),
          tooltip: l10n.dashboard_oosc,
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute<void>(builder: (_) => const OoscListScreen()),
          ),
        ),
      ],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const AdmissionCampaignFormScreen()),
        ),
        icon: const Icon(Icons.add),
        label: Text(l10n.admission_addCampaign),
      ),
      body: campaignsAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<AdmissionCampaignModel> campaigns) {
          if (campaigns.isEmpty) {
            return EmptyState(message: l10n.admission_noCampaigns, icon: Icons.how_to_reg_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: campaigns.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (BuildContext context, int index) {
              final AdmissionCampaignModel c = campaigns[index];
              return Card(
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => AdmissionCampaignDetailScreen(campaignId: c.id)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(c.academicYear, style: Theme.of(context).textTheme.titleMedium),
                            Text(DateFormat.yMMMd().format(c.date), style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                        const SizedBox(height: 8),
                        AchievementGauge(
                          target: c.targetEnrollment,
                          achieved: c.currentEnrollment,
                          percentage: c.achievementPercentage,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
