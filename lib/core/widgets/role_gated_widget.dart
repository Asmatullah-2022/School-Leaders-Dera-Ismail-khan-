import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

/// Shows [child] only when [currentRole] is contained in [allowedRoles].
/// Takes the role explicitly (rather than reading a provider itself) so
/// `core/` never depends on `features/auth` — callers pass the role from
/// `currentUserProvider`.
class RoleGatedWidget extends StatelessWidget {
  const RoleGatedWidget({
    super.key,
    required this.currentRole,
    required this.allowedRoles,
    required this.child,
    this.fallback,
  });

  final AppRole? currentRole;
  final List<AppRole> allowedRoles;
  final Widget child;
  final Widget? fallback;

  @override
  Widget build(BuildContext context) {
    if (currentRole != null && allowedRoles.contains(currentRole)) return child;
    return fallback ?? const SizedBox.shrink();
  }
}
