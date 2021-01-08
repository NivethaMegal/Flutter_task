import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/common/recommended_card.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Recommended widget has text', (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(
      MediaQuery(
        data: new MediaQueryData(),
        child: MaterialApp(
            home: RecommendedCard(
                recommendedModel: 'model', recommendedDays: '35 days')),
      ),
    );

    // Create the Finders.
    final text1Finder = find.text('model');
    final text2Finder = find.text('35 days');

    // Use the `findsOneWidget` matcher provided by flutter_test to
    // verify that the Text widgets appear exactly once in the widget tree.
    expect(text1Finder, findsOneWidget);
    expect(text2Finder, findsOneWidget);
  });
}
