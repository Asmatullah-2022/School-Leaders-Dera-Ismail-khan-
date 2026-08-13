import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

import 'package:school_leaders_di_khan/app.dart';
import 'package:school_leaders_di_khan/core/local_db/hive_boxes.dart';

void main() {
  setUpAll(() async {
    final Directory dir = await Directory.systemTemp.createTemp('school_leaders_hive_test');
    Hive.init(dir.path);
    for (final String name in HiveBoxes.eagerBoxes) {
      await Hive.openBox(name);
    }
  });

  testWidgets('App boots to the first-run setup screen without throwing', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: SchoolLeaderApp()));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(find.text('Welcome to School Leader DI Khan'), findsOneWidget);
  });
}
