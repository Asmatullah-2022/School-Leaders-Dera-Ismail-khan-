import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/firebase/firestore_converters.dart';
import '../../../../core/firebase/firestore_paths.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/firebase_providers.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/audit_log_model.dart';

/// Read-only viewer. Clients cannot write audit entries at all (firestore.rules
/// denies create/update/delete) — they are produced server-side, which is what
/// makes the trail trustworthy.
final auditLogProvider = StreamProvider<List<AuditLogModel>>((ref) {
  return ref
      .watch(firestoreProvider)
      .collection(FirestorePaths.auditLogs)
      .orderBy('timestamp', descending: true)
      .limit(200)
      .snapshots()
      .map(
        (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
            .map((doc) => AuditLogModel.fromJson(firestoreDataToJson(doc.data())))
            .toList(),
      );
});

class AuditLogScreen extends ConsumerWidget {
  const AuditLogScreen({super.key});

  static String actionLabel(AppLocalizations l10n, AuditAction a) => switch (a) {
    AuditAction.login => l10n.audit_action_login,
    AuditAction.logout => l10n.audit_action_logout,
    AuditAction.create => l10n.audit_action_create,
    AuditAction.update => l10n.audit_action_update,
    AuditAction.delete => l10n.audit_action_delete,
    AuditAction.submit => l10n.audit_action_submit,
    AuditAction.approve => l10n.audit_action_approve,
    AuditAction.reject => l10n.audit_action_reject,
    AuditAction.returned => l10n.audit_action_returned,
    AuditAction.roleChange => l10n.audit_action_roleChange,
    AuditAction.export => l10n.audit_action_export,
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<AuditLogModel>> logsAsync = ref.watch(auditLogProvider);

    return AppScaffold(
      title: l10n.more_auditLog,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              l10n.audit_readOnlyNote,
              style: Theme.of(context).textTheme.bodySmall
                  ?.copyWith(color: Theme.of(context).colorScheme.outline),
            ),
          ),
          Expanded(
            child: logsAsync.when(
              loading: () => const LoadingIndicator(),
              error: (_, _) =>
                  EmptyState(message: l10n.common_error_permission, icon: Icons.lock_outline),
              data: (List<AuditLogModel> logs) {
                if (logs.isEmpty) {
                  return EmptyState(
                    message: l10n.audit_noEntries,
                    icon: Icons.history_edu_outlined,
                  );
                }
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: logs.length,
                  separatorBuilder: (_, _) => const Divider(height: 1),
                  itemBuilder: (BuildContext context, int index) {
                    final AuditLogModel log = logs[index];
                    return ListTile(
                      dense: true,
                      leading: Icon(_iconFor(log.action), size: 20),
                      title: Text('${actionLabel(l10n, log.action)} · ${log.collectionName}'),
                      subtitle: Text(
                        '${log.actorName ?? log.actorUid}'
                        '${log.actorRole != null ? ' (${log.actorRole})' : ''}',
                      ),
                      trailing: Text(
                        DateFormat('yyyy-MM-dd HH:mm').format(log.timestamp),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  IconData _iconFor(AuditAction a) => switch (a) {
    AuditAction.login => Icons.login,
    AuditAction.logout => Icons.logout,
    AuditAction.create => Icons.add_circle_outline,
    AuditAction.update => Icons.edit_outlined,
    AuditAction.delete => Icons.delete_outline,
    AuditAction.submit => Icons.send_outlined,
    AuditAction.approve => Icons.check_circle_outline,
    AuditAction.reject => Icons.cancel_outlined,
    AuditAction.returned => Icons.undo,
    AuditAction.roleChange => Icons.manage_accounts_outlined,
    AuditAction.export => Icons.download_outlined,
  };
}
