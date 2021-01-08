import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/common/profile_details.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Profile Detail widget has text and icon',
      (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(ProfileDetails(text: 'Nivetha', icon: 'phone'));

    // Create the Finders.
    final textFinder = find.text('Nivetha');
    final iconFinder = find.byIcon(Icons.phone);

    // Use the `findsOneWidget` matcher provided by flutter_test to
    // verify that the Text widgets appear exactly once in the widget tree.
    expect(textFinder, findsOneWidget);
    expect(iconFinder, findsOneWidget);
  });
}
