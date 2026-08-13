import 'package:flutter/material.dart';

/// Base color tokens for the School Leader DI Khan education theme.
/// Dark green / white / light green form the primary identity; gray is
/// neutral; red/amber are reserved for critical/warning semantics only.
class AppColors {
  AppColors._();

  static const Color primaryDarkGreen = Color(0xFF1B5E20);
  static const Color primaryGreen = Color(0xFF2E7D32);
  static const Color lightGreen = Color(0xFFA5D6A7);
  static const Color paleGreen = Color(0xFFE8F5E9);

  static const Color white = Color(0xFFFFFFFF);
  static const Color neutralGrayLight = Color(0xFFF5F5F5);
  static const Color neutralGrayMid = Color(0xFF9E9E9E);
  static const Color neutralGrayDark = Color(0xFF424242);

  static const Color success = Color(0xFF2E7D32);
  static const Color warningAmber = Color(0xFFF9A825);
  static const Color criticalRed = Color(0xFFC62828);
  static const Color infoBlue = Color(0xFF1565C0);

  static const Color darkSurface = Color(0xFF121A12);
  static const Color darkSurfaceContainer = Color(0xFF1E271E);

  /// Status/severity colors reused across monitoring, problems, emergencies.
  static Color severityColor(String severity) {
    switch (severity.toLowerCase()) {
      case 'critical':
        return criticalRed;
      case 'high':
        return const Color(0xFFE64A19);
      case 'medium':
      case 'warning':
        return warningAmber;
      case 'low':
        return success;
      default:
        return neutralGrayMid;
    }
  }
}
