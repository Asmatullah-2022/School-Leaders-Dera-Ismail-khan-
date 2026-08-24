import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/official_update_model.dart';
import '../providers/official_update_providers.dart';
import '../widgets/official_update_labels.dart';
import 'official_update_form_screen.dart';

class OfficialUpdatesScreen extends ConsumerWidget {
  const OfficialUpdatesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AppRole? role = ref.watch(currentRoleProvider);
    final bool isAdmin = role?.isAdmin ?? false;
    final AsyncValue<List<OfficialUpdateModel>> raw = ref.watch(officialUpdatesProvider);
    final List<OfficialUpdateModel> visible = ref.watch(visibleOfficialUpdatesProvider);

    return AppScaffold(
      title: l10n.more_officialUpdates,
      floatingActionButton: isAdmin
          ? FloatingActionButton.extended(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (_) => const OfficialUpdateFormScreen()),
              ),
              icon: const Icon(Icons.add),
              label: Text(l10n.update_addUpdate),
            )
          : null,
      body: raw.when(
        loading: () => const LoadingIndicator(),
        error: (_, _) => EmptyState(message: l10n.common_error_unknown, icon: Icons.error_outline),
        data: (_) {
          if (visible.isEmpty) {
            return EmptyState(message: l10n.update_noUpdates, icon: Icons.campaign_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: visible.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (BuildContext context, int index) {
              final OfficialUpdateModel u = visible[index];
              return Card(
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: isAdmin
                      ? () => Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => OfficialUpdateFormScreen(existing: u),
                            ),
                          )
                      : null,
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(u.title, style: Theme.of(context).textTheme.titleMedium),
                            ),
                            if (!u.isPublished)
                              Chip(
                                label: Text(l10n.update_draft, style: const TextStyle(fontSize: 11)),
                                visualDensity: VisualDensity.compact,
                              ),
                          ],
                        ),
                        if (u.titleUrdu != null)
                          Text(u.titleUrdu!, style: Theme.of(context).textTheme.bodyMedium),
                        const SizedBox(height: 6),
                        Text(
                          u.description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                              decoration: BoxDecoration(
                                color: updatePriorityColor(u.priority).withValues(alpha: 0.15),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                updatePriorityLabel(l10n, u.priority),
                                style: TextStyle(
                                  color: updatePriorityColor(u.priority),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                updateCategoryLabel(l10n, u.category),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                            Text(
                              DateFormat.yMMMd().format(u.publishDate),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
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
