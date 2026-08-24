import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/localization/locale_provider.dart';
import '../../../../core/theme/theme_provider.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../auth/presentation/providers/auth_providers.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Locale? locale = ref.watch(localeProvider);
    final ThemeMode themeMode = ref.watch(themeModeProvider);

    return AppScaffold(
      title: l10n.settings_title,
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.language_outlined),
            title: Text(l10n.settings_language),
            trailing: DropdownButton<String>(
              value: locale?.languageCode ?? 'en',
              underline: const SizedBox.shrink(),
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(value: 'en', child: Text('English')),
                DropdownMenuItem<String>(value: 'ur', child: Text('اردو')),
              ],
              onChanged: (String? code) {
                if (code != null) ref.read(localeProvider.notifier).setLocale(Locale(code));
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.brightness_6_outlined),
            title: Text(l10n.settings_displayMode),
            trailing: DropdownButton<ThemeMode>(
              value: themeMode,
              underline: const SizedBox.shrink(),
              items: <DropdownMenuItem<ThemeMode>>[
                DropdownMenuItem<ThemeMode>(value: ThemeMode.light, child: Text(l10n.setup_light)),
                DropdownMenuItem<ThemeMode>(value: ThemeMode.dark, child: Text(l10n.setup_dark)),
                DropdownMenuItem<ThemeMode>(
                  value: ThemeMode.system,
                  child: Text(l10n.setup_systemDefault),
                ),
              ],
              onChanged: (ThemeMode? mode) {
                if (mode != null) ref.read(themeModeProvider.notifier).setThemeMode(mode);
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: Text(l10n.settings_notifications),
          ),
          ListTile(leading: const Icon(Icons.lock_outline), title: Text(l10n.settings_password)),
          ListTile(
            leading: const Icon(Icons.security_outlined),
            title: Text(l10n.settings_security),
          ),
          ListTile(
            leading: const Icon(Icons.sync_outlined),
            title: Text(l10n.settings_offlineSync),
          ),
          const Divider(),
          ListTile(leading: const Icon(Icons.info_outline), title: Text(l10n.settings_about)),
          ListTile(
            leading: const Icon(Icons.privacy_tip_outlined),
            title: Text(l10n.settings_privacyPolicy),
          ),
          ListTile(
            leading: const Icon(Icons.description_outlined),
            title: Text(l10n.settings_terms),
          ),
          ListTile(
            leading: const Icon(Icons.support_agent_outlined),
            title: Text(l10n.settings_support),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Theme.of(context).colorScheme.error),
            title: Text(
              l10n.common_logout,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            onTap: () => ref.read(authRepositoryProvider).signOut(),
          ),
        ],
      ),
    );
  }
}
