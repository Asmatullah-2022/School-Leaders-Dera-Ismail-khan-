import 'package:flutter/material.dart';

import 'offline_banner.dart';

/// Standard screen scaffold: app bar + offline/sync banner + body. Used by
/// every feature screen so the sync banner is never forgotten on a form.
class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
    this.title,
    this.actions,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.showOfflineBanner = true,
  });

  final Widget body;
  final String? title;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool showOfflineBanner;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title != null ? AppBar(title: Text(title!), actions: actions) : null,
      body: Column(
        children: <Widget>[
          if (showOfflineBanner) const OfflineBanner(),
          Expanded(child: body),
        ],
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
