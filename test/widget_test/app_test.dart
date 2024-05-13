import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testcase_app/calculator.dart';
import 'package:testcase_app/main.dart';

/*


*/

void main() {
  testWidgets("description", (tester) async {
    await tester.pumpWidget(const MyApp());
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
}
