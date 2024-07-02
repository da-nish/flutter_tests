import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testcase_app/main.dart';

void main() {
  testWidgets('Golden test', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1170, 2532);
    // tester.view.devicePixelRatio = 1.0;

    await tester.pumpWidget(const MyApp());

    await expectLater(
      find.byType(MyApp),
      matchesGoldenFile('5ss.png'),
    );
  });
}
