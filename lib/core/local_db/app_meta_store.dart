import 'package:hive_flutter/hive_flutter.dart';

import '../constants/app_constants.dart';
import 'hive_boxes.dart';

/// Thin wrapper over the `app_meta` Hive box for simple key/value app
/// preferences (theme mode, locale, first-run flag) — used instead of a
/// separate `shared_preferences` dependency to keep the plugin surface small.
class AppMetaStore {
  AppMetaStore(this._box);

  factory AppMetaStore.instance() => AppMetaStore(Hive.box(HiveBoxes.appMeta));

  final Box<dynamic> _box;

  String? getString(String key) => _box.get(key) as String?;

  Future<void> setString(String key, String value) => _box.put(key, value);

  bool getBool(String key, {bool defaultValue = false}) =>
      (_box.get(key) as bool?) ?? defaultValue;

  Future<void> setBool(String key, bool value) => _box.put(key, value);

  Future<void> clear() => _box.clear();

  bool get isSetupComplete => getBool(AppConstants.prefsKeySetupComplete);
}
