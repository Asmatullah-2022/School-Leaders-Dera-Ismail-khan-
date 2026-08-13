import 'package:hive_flutter/hive_flutter.dart';

import 'hive_boxes.dart';

/// Initializes Hive and opens every box the app needs up front so providers
/// can use the synchronous `Hive.box(name)` accessor without an async gap.
Future<void> initHive() async {
  await Hive.initFlutter();
  for (final String boxName in HiveBoxes.eagerBoxes) {
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox(boxName);
    }
  }
}
