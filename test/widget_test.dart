import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:prestacontrol/main.dart';

void main() {
  testWidgets('App muestra el placeholder de PrestaControl', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    expect(find.text('PrestaControl'), findsOneWidget);
  });
}
