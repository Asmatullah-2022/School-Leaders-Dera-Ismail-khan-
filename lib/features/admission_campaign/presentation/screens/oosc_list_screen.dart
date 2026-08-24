import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/oosc_record_model.dart';
import '../providers/admission_providers.dart';
import '../widgets/oosc_status_chip.dart';
import 'oosc_detail_screen.dart';
import 'oosc_form_screen.dart';

class OoscListScreen extends ConsumerStatefulWidget {
  const OoscListScreen({super.key});

  @override
  ConsumerState<OoscListScreen> createState() => _OoscListScreenState();
}

class _OoscListScreenState extends ConsumerState<OoscListScreen> {
  OoscStatus? _filter;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<OoscRecordModel>> recordsAsync = ref.watch(scopedOoscRecordsProvider);

    return AppScaffold(
      title: l10n.dashboard_oosc,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const OoscFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.oosc_addRecord),
      ),
      body: recordsAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<OoscRecordModel> records) {
          final List<OoscRecordModel> filtered = _filter == null
              ? records
              : records.where((r) => r.status == _filter).toList();
          return Column(
            children: <Widget>[
              SizedBox(
                height: 48,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  children: <Widget>[
                    _filterChip(context, null, l10n.common_viewAll),
                    for (final OoscStatus s in OoscStatus.values)
                      _filterChip(context, s, OoscStatusChip.label(l10n, s)),
                  ],
                ),
              ),
              Expanded(
                child: filtered.isEmpty
                    ? EmptyState(message: l10n.oosc_noRecords, icon: Icons.person_search_outlined)
                    : ListView.separated(
                        padding: const EdgeInsets.all(12),
                        itemCount: filtered.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 4),
                        itemBuilder: (BuildContext context, int index) {
                          final OoscRecordModel r = filtered[index];
                          return Card(
                            child: ListTile(
                              title: Text(r.childName),
                              subtitle: Text('${l10n.oosc_age}: ${r.age} · ${r.village ?? ''}'),
                              trailing: OoscStatusChip(status: r.status),
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                  builder: (_) => OoscDetailScreen(recordId: r.id),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _filterChip(BuildContext context, OoscStatus? status, String label) {
    final bool selected = _filter == status;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: selected,
        onSelected: (_) => setState(() => _filter = status),
      ),
    );
  }
}
