import 'package:flutter/material.dart';

import '../error/failure.dart';
import '../localization/l10n_gen/app_localizations.dart';

/// Resolves a [Failure] to a localized, user-safe message via its ARB key —
/// raw exception text must never reach this widget.
class ErrorView extends StatelessWidget {
  const ErrorView({super.key, required this.failure, this.onRetry});

  final Failure failure;
  final VoidCallback? onRetry;

  static String messageFor(AppLocalizations l10n, Failure failure) {
    return switch (failure.messageKey) {
      'common_error_network' => l10n.common_error_network,
      'common_error_auth' => l10n.common_error_auth,
      'common_error_permission' => l10n.common_error_permission,
      'common_error_notFound' => l10n.common_error_notFound,
      _ => l10n.common_error_unknown,
    };
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final ColorScheme scheme = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.error_outline, size: 56, color: scheme.error),
            const SizedBox(height: 16),
            Text(
              messageFor(l10n, failure),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (onRetry != null) ...<Widget>[
              const SizedBox(height: 20),
              FilledButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                label: Text(l10n.common_retry),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
