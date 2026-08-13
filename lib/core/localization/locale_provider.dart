import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_constants.dart';
import '../local_db/app_meta_store.dart';

/// Persisted app locale (`en` or `ur`). `null` means "not chosen yet" so the
/// first-run setup flow knows to show the language picker.
class LocaleNotifier extends Notifier<Locale?> {
  @override
  Locale? build() {
    final String? saved = AppMetaStore.instance().getString(AppConstants.prefsKeyLocale);
    if (saved == null) return null;
    return Locale(saved);
  }

  Future<void> setLocale(Locale locale) async {
    await AppMetaStore.instance().setString(AppConstants.prefsKeyLocale, locale.languageCode);
    state = locale;
  }
}

final NotifierProvider<LocaleNotifier, Locale?> localeProvider =
    NotifierProvider<LocaleNotifier, Locale?>(LocaleNotifier.new);

bool isRtl(Locale? locale) => locale?.languageCode == 'ur';
