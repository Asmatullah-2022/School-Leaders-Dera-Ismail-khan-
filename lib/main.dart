import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/local_db/hive_init.dart';
import 'core/providers/firebase_providers.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();

  final ProviderContainer container = ProviderContainer();
  try {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    container.read(firebaseReadyProvider.notifier).state = true;
  } catch (e, st) {
    // Expected until `flutterfire configure` has been run with a real
    // project — see firebase_options.dart. The app still boots and shows a
    // "Firebase not configured" state instead of crashing.
    if (kDebugMode) {
      debugPrint('Firebase initialization skipped: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  runApp(UncontrolledProviderScope(container: container, child: const SchoolLeaderApp()));
}
