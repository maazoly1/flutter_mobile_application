// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_mobile_application/app/app.dart';

// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }

void main() {
  testWidgets('Calculator Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Lets check everything is working fine or not.
    expect(find.byKey(const Key("result")), findsOneWidget);
    expect(find.byKey(const Key("display1")), findsOneWidget);
    expect(find.byKey(const Key("display2")), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.add), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.minus), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.multiply), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.divide), findsOneWidget);

    // Lets start the test
    await tester.enterText(find.byKey(const Key("display1")), "10");
    await tester.enterText(find.byKey(const Key("display2")), "10");

    // Lets check add button is working fine or not.
    await tester.tap(find.byIcon(CupertinoIcons.add));
    await tester.pump();
    expect(find.text("20"), findsOneWidget);

    // Lets check minus button is working fine or not.
    await tester.tap(find.byIcon(CupertinoIcons.minus));
    await tester.pump();
    expect(find.text("0"), findsOneWidget);

    // Lets check multiply button is working fine or not.
    await tester.tap(find.byIcon(CupertinoIcons.multiply));
    await tester.pump();
    expect(find.text("100"), findsOneWidget);

    // Lets check divide button is working fine or not.
    await tester.tap(find.byIcon(CupertinoIcons.divide));
    await tester.pump();
    expect(find.text("1.0"), findsOneWidget);

  });
}
