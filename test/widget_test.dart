import 'package:flutter_test/flutter_test.dart';
import 'package:practice_flutter/main.dart';

void main() {
  testWidgets('Login screen loads and renders all components', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify header title
    expect(find.text('Practice Flutter'), findsOneWidget);

    // Verify fields exist
    expect(find.text('Work Email Address'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);

    // Verify login button
    expect(find.text('Sign In to Dashboard'), findsOneWidget);

    // Verify social login options
    expect(find.text('OR CONTINUE WITH'), findsOneWidget);
    expect(find.text('Google'), findsOneWidget);
  });
}
