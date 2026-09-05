import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/cluster_meeting_model.dart';

String meetingStatusLabel(AppLocalizations l10n, MeetingStatus s) => switch (s) {
      MeetingStatus.pending => l10n.clusterMeeting_status_pending,
      MeetingStatus.inProgress => l10n.clusterMeeting_status_inProgress,
      MeetingStatus.completed => l10n.clusterMeeting_status_completed,
    };

Color meetingStatusColor(MeetingStatus s) => switch (s) {
      MeetingStatus.pending => Colors.orange,
      MeetingStatus.inProgress => Colors.blue,
      MeetingStatus.completed => Colors.green,
    };
