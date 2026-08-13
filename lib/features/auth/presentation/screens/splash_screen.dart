import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.school, size: 72, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 16),
            Text(AppConstants.appName, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 24),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
