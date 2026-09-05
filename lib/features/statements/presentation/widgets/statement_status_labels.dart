import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/statement_model.dart';

String statementStatusLabel(AppLocalizations l10n, StatementStatus s) => switch (s) {
  StatementStatus.draft => l10n.statement_status_draft,
  StatementStatus.submitted => l10n.statement_status_submitted,
  StatementStatus.underReview => l10n.statement_status_underReview,
  StatementStatus.approved => l10n.statement_status_approved,
  StatementStatus.returned => l10n.statement_status_returned,
};

Color statementStatusColor(StatementStatus s) => switch (s) {
  StatementStatus.draft => Colors.grey,
  StatementStatus.submitted => Colors.blue,
  StatementStatus.underReview => Colors.orange,
  StatementStatus.approved => Colors.green,
  StatementStatus.returned => Colors.red,
};
