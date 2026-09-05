import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import '../../data/models/cleanliness_model.dart';
import 'cleanliness_detail_screen.dart';
import 'cleanliness_form_screen.dart';

class CleanlinessListScreen extends ConsumerWidget {
  const CleanlinessListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<CleanlinessModel>> async = ref.watch(scopedCleanlinessProvider);

    return AppScaffold(
      title: l10n.more_cleanliness,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const CleanlinessFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.cleanliness_addInspection),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<CleanlinessModel> items) {
          if (items.isEmpty) {
            return EmptyState(
              message: l10n.cleanliness_noInspections,
              icon: Icons.cleaning_services_outlined,
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final CleanlinessModel c = items[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: _scoreColor(c.score).withValues(alpha: 0.15),
                    child: Text(
                      '${(c.score * 100).round()}%',
                      style: TextStyle(
                        color: _scoreColor(c.score),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text(DateFormat.yMMMd().format(c.inspectionDate)),
                  subtitle: c.remarks != null ? Text(c.remarks!) : null,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => CleanlinessDetailScreen(recordId: c.id),
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

  Color _scoreColor(double score) {
    if (score >= 0.8) return Colors.green;
    if (score >= 0.5) return Colors.orange;
    return Colors.red;
  }
}
