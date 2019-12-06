// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zoo_app/controller/controller.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/fact.dart';
import 'package:zoo_app/model/model.dart';

import 'package:zoo_app/view/app.dart';

Widget _getZooApp(WidgetTester tester, Model model)
{
  var controller = Controller(model);
  Widget app = MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimalListPage(controller: controller),
    );

  return app;
}

// Tests created by Jordan Clark
testAnimalPage()
{
  testWidgets("Animal list contains all animals", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getZooApp(tester, Model.mockModel([
      Animal(0, "Test 0", "Test 0"),
      Animal(1, "Test 1", "Test 1")
    ], [])));

    expect(find.widgetWithText(RaisedButton, "Test 0"), findsOneWidget);
    expect(find.widgetWithText(RaisedButton, "Test 1"), findsOneWidget);
  });
  testWidgets("Animal list goes to animal page when clicking an option", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getZooApp(tester, Model.mockModel([
      Animal(0, "Test 0", "Test Scientific Name"),
    ], [])));

    await tester.tap(find.widgetWithText(RaisedButton, "Test 0"));
    await tester.pumpAndSettle();

    expect(find.text("Test Scientific Name"), findsOneWidget);
  });
  testWidgets("Animal page displays facts", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getZooApp(tester, Model.mockModel([
      Animal(0, "Test 0", "Test 0"),
    ],
    [
      Fact(0, 0, "Fact"),
    ])));

    await tester.tap(find.widgetWithText(RaisedButton, "Test 0"));
    await tester.pumpAndSettle();

    expect(find.text("- Fact"), findsOneWidget);
  });
  testWidgets("Animal page displays error for nonexistant animal", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getZooApp(tester, Model.mockModel([
      Animal(0, "Test 0", "Test 0"),
    ],
    [
      Fact(0, 0, "Fact"),
    ])));

    await tester.tap(find.widgetWithText(RaisedButton, "Nonexistant animal"));
    await tester.pumpAndSettle();

    expect(find.text("Our search has gone cold on this one, try another page!"), findsOneWidget);
  });
}

void main() {
  // Example
  /*testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ZooApp(null));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });*/

  testAnimalPage();
}
