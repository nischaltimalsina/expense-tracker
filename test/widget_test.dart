import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:expense_tracker/main.dart';

void main() {
  testWidgets('App should display Expense Tracker title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ExpenseTrackerApp());

    // Verify that the app title is displayed
    expect(find.text('Expense Tracker'), findsOneOrMore);
  });

  testWidgets('App should have bottom navigation', (WidgetTester tester) async {
    await tester.pumpWidget(const ExpenseTrackerApp());

    // Verify that bottom navigation items are present
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Reports'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });

  testWidgets('App should have floating action button on home screen', 
      (WidgetTester tester) async {
    await tester.pumpWidget(const ExpenseTrackerApp());

    // Verify FAB is present
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('Navigation should work between tabs', (WidgetTester tester) async {
    await tester.pumpWidget(const ExpenseTrackerApp());

    // Tap on Reports tab
    await tester.tap(find.text('Reports'));
    await tester.pumpAndSettle();

    // Verify Reports screen content
    expect(find.text('Financial Reports'), findsOneWidget);

    // Tap on Settings tab
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();

    // Verify Settings screen content
    expect(find.text('Settings'), findsAtLeastNWidgets(1));
  });

  testWidgets('FAB should navigate to Add Transaction screen', 
      (WidgetTester tester) async {
    await tester.pumpWidget(const ExpenseTrackerApp());

    // Tap the FAB
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    // Verify we're on the Add Transaction screen
    expect(find.text('Add Transaction'), findsAtLeastNWidgets(1));
  });
}
