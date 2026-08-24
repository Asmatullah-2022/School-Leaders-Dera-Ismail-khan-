import 'package:flutter/material.dart';

import '../localization/l10n_gen/app_localizations.dart';
import 'app_scaffold.dart';

/// Placeholder for modules that are schema/repository-scaffolded but do not
/// have UI yet (see `docs/MODULE_PATTERN.md`). Keeps every nav entry and
/// dashboard quick-action navigable instead of dead-ending.
class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return AppScaffold(
      title: title,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.hourglass_top_outlined,
                size: 56,
                color: Theme.of(context).colorScheme.outline,
              ),
              const SizedBox(height: 16),
              Text(l10n.common_comingSoon, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
