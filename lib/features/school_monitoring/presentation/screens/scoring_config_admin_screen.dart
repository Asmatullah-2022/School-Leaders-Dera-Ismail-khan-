import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/monitoring_config_model.dart';
import '../../data/models/scoring_criterion_model.dart';
import '../providers/monitoring_providers.dart';

/// District Admin/Super Admin only. Weights are relative (need not total
/// 100 — `calculateWeightedScore` normalizes by their sum), so this screen
/// warns rather than blocks when they don't, matching the usecase's design.
class ScoringConfigAdminScreen extends ConsumerStatefulWidget {
  const ScoringConfigAdminScreen({super.key});

  @override
  ConsumerState<ScoringConfigAdminScreen> createState() => _ScoringConfigAdminScreenState();
}

class _ScoringConfigAdminScreenState extends ConsumerState<ScoringConfigAdminScreen> {
  List<ScoringCriterionModel>? _criteria;
  final Map<String, TextEditingController> _weightControllers = <String, TextEditingController>{};
  final Map<String, TextEditingController> _maxScoreControllers = <String, TextEditingController>{};
  bool _isSaving = false;

  void _initFrom(MonitoringConfigModel config) {
    if (_criteria != null) return;
    _criteria = config.criteria;
    for (final ScoringCriterionModel c in config.criteria) {
      _weightControllers[c.id] = TextEditingController(text: c.weight.toStringAsFixed(0));
      _maxScoreControllers[c.id] = TextEditingController(text: c.maxScore.toStringAsFixed(0));
    }
  }

  @override
  void dispose() {
    for (final c in _weightControllers.values) {
      c.dispose();
    }
    for (final c in _maxScoreControllers.values) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save(MonitoringConfigModel current) async {
    setState(() => _isSaving = true);
    final List<ScoringCriterionModel> updated = _criteria!
        .map((c) => c.copyWith(
              weight: double.tryParse(_weightControllers[c.id]!.text) ?? c.weight,
              maxScore: double.tryParse(_maxScoreControllers[c.id]!.text) ?? c.maxScore,
            ))
        .toList();
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    await ref.read(monitoringConfigRepositoryProvider).save(
          current.copyWith(criteria: updated),
          updatedByUid: uid,
        );
    if (!mounted) return;
    setState(() => _isSaving = false);
    final AppLocalizations l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l10n.monitoring_configSaved)));
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final configAsync = ref.watch(monitoringConfigProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.monitoring_scoringConfig)),
      body: configAsync.when(
        loading: () => const LoadingIndicator(),
        error: (_, _) => Center(child: Text(l10n.common_error_unknown)),
        data: (MonitoringConfigModel config) {
          _initFrom(config);
          final double totalWeight = _criteria!.fold(0.0, (sum, c) => sum + (double.tryParse(_weightControllers[c.id]!.text) ?? 0));
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              if ((totalWeight - 100).abs() > 0.01)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    '${l10n.monitoring_weight}: ${totalWeight.toStringAsFixed(0)} (≠ 100 — still valid, scores are normalized)',
                    style: TextStyle(color: Theme.of(context).colorScheme.tertiary, fontSize: 12),
                  ),
                ),
              for (final ScoringCriterionModel c in _criteria!)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(c.label, style: Theme.of(context).textTheme.titleSmall),
                        const SizedBox(height: 8),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                controller: _weightControllers[c.id],
                                decoration: InputDecoration(labelText: l10n.monitoring_weight),
                                keyboardType: TextInputType.number,
                                onChanged: (_) => setState(() {}),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: TextField(
                                controller: _maxScoreControllers[c.id],
                                decoration: InputDecoration(labelText: l10n.monitoring_maxScore),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: _isSaving ? null : () => _save(config),
                child: _isSaving
                    ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                    : Text(l10n.monitoring_saveConfig),
              ),
            ],
          );
        },
      ),
    );
  }
}
