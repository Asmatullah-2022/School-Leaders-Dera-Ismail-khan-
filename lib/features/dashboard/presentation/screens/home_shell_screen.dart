import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/coming_soon_screen.dart';
import '../../../../core/widgets/offline_banner.dart';
import '../../../hierarchy/presentation/screens/school_list_screen.dart';
import 'home_dashboard_screen.dart';
import 'more_menu_screen.dart';

/// Bottom-navigation shell hosting the 5 main sections. Implemented as a
/// single route with an internal IndexedStack (rather than go_router nested
/// shell branches) to keep routing simple; sub-screens (forms/details) are
/// pushed as top-level routes from within each tab.
class HomeShellScreen extends ConsumerStatefulWidget {
  const HomeShellScreen({super.key});

  @override
  ConsumerState<HomeShellScreen> createState() => _HomeShellScreenState();
}

class _HomeShellScreenState extends ConsumerState<HomeShellScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final List<Widget> tabs = <Widget>[
      const HomeDashboardScreen(),
      const SchoolListScreen(),
      ComingSoonScreen(title: l10n.nav_monitoring),
      ComingSoonScreen(title: l10n.nav_reports),
      const MoreMenuScreen(),
    ];

    return Scaffold(
      body: Column(
        children: <Widget>[
          const OfflineBanner(),
          Expanded(child: IndexedStack(index: _index, children: tabs)),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (int i) => setState(() => _index = i),
        destinations: <NavigationDestination>[
          NavigationDestination(icon: const Icon(Icons.home_outlined), selectedIcon: const Icon(Icons.home), label: l10n.nav_home),
          NavigationDestination(icon: const Icon(Icons.apartment_outlined), selectedIcon: const Icon(Icons.apartment), label: l10n.nav_schools),
          NavigationDestination(icon: const Icon(Icons.fact_check_outlined), selectedIcon: const Icon(Icons.fact_check), label: l10n.nav_monitoring),
          NavigationDestination(icon: const Icon(Icons.bar_chart_outlined), selectedIcon: const Icon(Icons.bar_chart), label: l10n.nav_reports),
          NavigationDestination(icon: const Icon(Icons.more_horiz), selectedIcon: const Icon(Icons.more_horiz), label: l10n.nav_more),
        ],
      ),
    );
  }
}
