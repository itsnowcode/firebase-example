import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

// The application under test.
import 'package:firestore_emulator/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Counter App', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final loading1 = find.byKey(const Key('loading1'));
    final Finder fab = find.byKey(Key('fab'));
    final Finder counter = find.byKey(Key('counter'));

    testWidgets('starts at 0', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(widget<Text>(tester, loading1).data, 'Loading');
      await tester.pumpAndSettle();

      while (findsNothing.matches(counter, {})) {
        await tester.pumpAndSettle();
      }

      // Use the `driver.getText` method to verify the counter starts at 0.
      expect(widget<Text>(tester, counter).data, "0");
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
    });

    testWidgets('increments the counter', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(widget<Text>(tester, loading1).data, 'Loading');
      await tester.pumpAndSettle();

      while (findsNothing.matches(counter, {})) {
        await tester.pumpAndSettle();
      }

      // First, tap the button.
      await tester.tap(fab);
      await tester.pumpAndSettle();

      // Then, verify the counter text is incremented by 1.
      expect(widget<Text>(tester, counter).data, "1");
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
  });
}

T widget<T extends Widget>(WidgetTester tester, Finder f) {
  Widget w = tester.element(f).widget;
  if (w is T) {
    return w;
  }
  return w as T;
}
