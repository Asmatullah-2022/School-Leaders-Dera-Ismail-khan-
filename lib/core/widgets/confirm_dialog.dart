import 'package:flutter/material.dart';

import '../localization/l10n_gen/app_localizations.dart';

Future<bool> showConfirmDialog(
  BuildContext context, {
  required String message,
  String? title,
}) async {
  final AppLocalizations l10n = AppLocalizations.of(context);
  final bool? result = await showDialog<bool>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: title != null ? Text(title) : null,
      content: Text(message),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(l10n.common_cancel),
        ),
        FilledButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(l10n.common_confirm),
        ),
      ],
    ),
  );
  return result ?? false;
}
