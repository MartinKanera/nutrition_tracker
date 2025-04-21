import 'package:flutter_test/flutter_test.dart';
import 'package:nutrition_tracker/app/app.dart';
import 'package:nutrition_tracker/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
