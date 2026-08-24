import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light() {
    final ColorScheme scheme =
        ColorScheme.fromSeed(
          seedColor: AppColors.primaryDarkGreen,
          brightness: Brightness.light,
        ).copyWith(
          primary: AppColors.primaryDarkGreen,
          secondary: AppColors.primaryGreen,
          tertiary: AppColors.warningAmber,
          error: AppColors.criticalRed,
          surface: AppColors.white,
          surfaceContainerHighest: AppColors.neutralGrayLight,
        );
    return _themeFrom(scheme, Brightness.light);
  }

  static ThemeData dark() {
    final ColorScheme scheme =
        ColorScheme.fromSeed(seedColor: AppColors.lightGreen, brightness: Brightness.dark).copyWith(
          primary: AppColors.lightGreen,
          secondary: AppColors.primaryGreen,
          tertiary: AppColors.warningAmber,
          error: const Color(0xFFEF9A9A),
          surface: AppColors.darkSurface,
          surfaceContainerHighest: AppColors.darkSurfaceContainer,
        );
    return _themeFrom(scheme, Brightness.dark);
  }

  static ThemeData _themeFrom(ColorScheme scheme, Brightness brightness) {
    final bool isDark = brightness == Brightness.dark;
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: isDark ? AppColors.darkSurface : AppColors.neutralGrayLight,
      appBarTheme: AppBarTheme(
        backgroundColor: scheme.primary,
        foregroundColor: isDark ? Colors.black : AppColors.white,
        centerTitle: true,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: scheme.surface,
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(52),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(52),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: isDark ? AppColors.darkSurfaceContainer : AppColors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: scheme.outlineVariant),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: scheme.outlineVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: scheme.primary, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: scheme.surface,
        indicatorColor: scheme.primaryContainer,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: isDark ? AppColors.darkSurfaceContainer : AppColors.paleGreen,
        labelStyle: TextStyle(color: scheme.onSurface),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      dividerTheme: DividerThemeData(color: scheme.outlineVariant, thickness: 1),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
