import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/local_db/app_meta_store.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/localization/locale_provider.dart';
import '../../../../core/theme/theme_provider.dart';

/// First-run flow: pick language, then display mode, then continue. Shown
/// once — gated by `AppMetaStore.isSetupComplete` in the router redirect —
/// and reachable again later from Settings if the user resets preferences.
class SetupScreen extends ConsumerStatefulWidget {
  const SetupScreen({super.key});

  @override
  ConsumerState<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends ConsumerState<SetupScreen> {
  Locale _selectedLocale = const Locale('en');
  ThemeMode _selectedThemeMode = ThemeMode.system;

  Future<void> _finish() async {
    await ref.read(localeProvider.notifier).setLocale(_selectedLocale);
    await ref.read(themeModeProvider.notifier).setThemeMode(_selectedThemeMode);
    await AppMetaStore.instance().setBool(AppConstants.prefsKeySetupComplete, true);
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = const Locale('ur') == _selectedLocale
        ? lookupAppLocalizations(const Locale('ur'))
        : lookupAppLocalizations(const Locale('en'));

    return Directionality(
      textDirection: _selectedLocale.languageCode == 'ur' ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 480),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.school, size: 72, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(height: 16),
                    Text(
                      l10n.setup_welcomeTitle,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 32),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        l10n.setup_selectLanguage,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: _ChoiceCard(
                            label: 'English',
                            selected: _selectedLocale.languageCode == 'en',
                            onTap: () => setState(() => _selectedLocale = const Locale('en')),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _ChoiceCard(
                            label: 'اردو',
                            selected: _selectedLocale.languageCode == 'ur',
                            onTap: () => setState(() => _selectedLocale = const Locale('ur')),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        l10n.setup_selectDisplayMode,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: _ChoiceCard(
                            label: l10n.setup_light,
                            icon: Icons.light_mode_outlined,
                            selected: _selectedThemeMode == ThemeMode.light,
                            onTap: () => setState(() => _selectedThemeMode = ThemeMode.light),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _ChoiceCard(
                            label: l10n.setup_dark,
                            icon: Icons.dark_mode_outlined,
                            selected: _selectedThemeMode == ThemeMode.dark,
                            onTap: () => setState(() => _selectedThemeMode = ThemeMode.dark),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: _ChoiceCard(
                            label: l10n.setup_systemDefault,
                            icon: Icons.settings_suggest_outlined,
                            selected: _selectedThemeMode == ThemeMode.system,
                            onTap: () => setState(() => _selectedThemeMode = ThemeMode.system),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 36),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(onPressed: _finish, child: Text(l10n.setup_continue)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ChoiceCard extends StatelessWidget {
  const _ChoiceCard({required this.label, required this.selected, required this.onTap, this.icon});

  final String label;
  final bool selected;
  final VoidCallback onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
        decoration: BoxDecoration(
          color: selected ? scheme.primaryContainer : scheme.surface,
          border: Border.all(
            color: selected ? scheme.primary : scheme.outlineVariant,
            width: selected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (icon != null)
              Icon(icon, color: selected ? scheme.primary : scheme.onSurfaceVariant),
            if (icon != null) const SizedBox(height: 6),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: selected ? FontWeight.bold : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
