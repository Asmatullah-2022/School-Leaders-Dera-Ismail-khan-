import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../local_db/sync_queue/sync_engine.dart';
import '../localization/l10n_gen/app_localizations.dart';
import '../network/connectivity_provider.dart';
import '../theme/app_colors.dart';

/// A slim banner shown at the top of scaffolds whenever the device is
/// offline or there are unsynced records waiting in the outbox.
class OfflineBanner extends ConsumerWidget {
  const OfflineBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool isOnline = ref.watch(isOnlineStreamProvider).valueOrNull ?? true;
    final int pending = ref.watch(pendingSyncCountProvider).valueOrNull ?? 0;

    if (isOnline && pending == 0) return const SizedBox.shrink();

    final Color background = isOnline ? AppColors.warningAmber : AppColors.neutralGrayDark;
    final String text = !isOnline
        ? l10n.common_noInternet
        : l10n.sync_pendingBanner(pending);

    return Container(
      width: double.infinity,
      color: background,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(isOnline ? Icons.sync : Icons.cloud_off, size: 16, color: Colors.white),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
