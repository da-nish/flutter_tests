import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testcase_app/main.dart';
import 'package:testcase_app/main.dart' as app;

/*


*/

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("description", () {
    testWidgets("description", (tester) async {
      app.main();
      await tester.pumpAndSettle();
      var text = find.byType(Text);
      expect(text, findsOneWidget);
      var textField = text.evaluate().single.widget as Text;
      // print(textField.data);
      expect(textField.data, '0');

      var button = find.byType(FloatingActionButton);

      expect(button, findsOneWidget);

      await tester.tap(button);
      await tester.pump();

      textField = text.evaluate().single.widget as Text;
      expect(textField.data, '1');
    });
  });
}
