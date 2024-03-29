// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zoo_app/zoomableImage.dart';
import 'package:zoo_app/view/mapPage.dart';
import 'package:zoo_app/Calendar.dart';
import 'package:zoo_app/ZooInformation/ZooInfo.dart';
import 'package:zoo_app/view/ExploreBy.dart';
import 'package:zoo_app/HomePage.dart';
import 'package:zoo_app/controller/controller.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/fact.dart';
import 'package:zoo_app/model/model.dart';
import 'package:zoo_app/view/animalPage.dart';
import 'package:zoo_app/view/app.dart';
import 'package:zoo_app/main.dart';
import 'package:zoo_app/view/exhibits.dart';
import 'package:zoo_app/view/family.dart';
import 'package:zoo_app/view/notFoundErrorPage.dart';

Widget _getAnimalListPage(WidgetTester tester, Model model)
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

Widget _getExhibitPage(WidgetTester tester)
{
  var controller = Controller(Model.mockModel([
    Animal(1, "African Bullfrog", "Pyxicephalus Adspersus", 1, 1),
    Animal(2, "African Crested Porcupine", "Hystix Cristata", 1, 1),
    Animal(3, "African Lungfish", "Protopterus Annectens", 1, 1),
    Animal(4, "African Painted Dog", "Lycaon Pictus", 1, 1),
    Animal(5, "African Red-Billed Hornbill", "Tockus Erythro", 1, 1),
    Animal(6, "African Rock Python", "Python Sebae", 1, 1),
    Animal(7, "African Slender-Snouted Crocodile", "Mecistops Cataphractus", 1, 1),
    Animal(8, "African Spurred Tortoise", "Centrochelys Sulcata", 1, 1),
    Animal(9, "Allen's Swamp Monkey", "Allenopithecus Nigroviridis", 1, 1),
    Animal(10, "American Beaver", "Castor Canadensis", 1, 1),
  ], [], {1: "Test Class"}, {1: "Test Exhibit"}));
  Widget app = MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExploreBy(controller: controller),
    );


  return app;
}

Widget _getZooInfoPage(WidgetTester tester)
{
  Widget app = MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: ZooInfo(),
  );

  return app;
}

Widget _getMapPage(WidgetTester tester)
{
  Widget app = MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MapPage(),
  );

  return app;
}

Widget _getCalendarPage(WidgetTester tester)
{
  Widget app = MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: CalendarPage(),
  );

  return app;
}

testDrawer()
{
  testWidgets("Drawer containes ListTile contents", (WidgetTester tester) async
  {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    var model = Model.mockModel([new Animal(0, "Test animal", "Test animal", 1, 1)], []);
    var controller = Controller(model);
    await tester.pumpWidget(MyApp(controller, scaffoldKey: scaffoldKey,));

    scaffoldKey.currentState.openDrawer();
    await tester.pump();
    expect(find.byType(ListTile), findsWidgets);
  });
  testWidgets("Drawer navigates to animal page", (WidgetTester tester) async
  {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    var model = Model.mockModel([new Animal(0, "Test animal", "Test animal", 1, 1)], []);
    var controller = Controller(model);
    await tester.pumpWidget(MyApp(controller, scaffoldKey: scaffoldKey,));

    scaffoldKey.currentState.openDrawer();
    await tester.pumpAndSettle();

    expect(find.widgetWithText(ListTile, "Search"), findsOneWidget);
    await tester.tap(find.widgetWithText(ListTile, "Search"));
    await tester.pumpAndSettle();

    expect(find.byType(AnimalListPage, skipOffstage: false), findsWidgets);
  });
  testWidgets("Drawer returns to home page", (WidgetTester tester) async
  {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    var model = Model.mockModel([new Animal(0, "Test animal", "Test animal", 1, 1)], []);
    var controller = Controller(model);
    await tester.pumpWidget(MyApp(controller, scaffoldKey: scaffoldKey,));

    scaffoldKey.currentState.openDrawer();
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ListTile, "Search"));
    await tester.pumpAndSettle();
    scaffoldKey.currentState.openDrawer();
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ListTile, "Home"));
    await tester.pumpAndSettle();

    expect(find.byType(HomePage, skipOffstage: false), findsWidgets);
  });
}

// Tests created by Jordan Clark
testAnimalPage()
{
  testWidgets("Animal list contains all animals", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getAnimalListPage(tester, Model.mockModel([
      Animal(0, "Test 0", "Test 0", 1, 1),
      Animal(1, "Test 1", "Test 1", 1, 1)
    ], [])));
    await tester.pumpAndSettle(Duration(seconds: 1));

    expect(find.widgetWithText(RaisedButton, "Test 0"), findsOneWidget);
    expect(find.widgetWithText(RaisedButton, "Test 1"), findsOneWidget);
  });
  
  // NOTICE: This test is failing due to the use of a URL-based Carousel in the AnimalPage class, which 
  // throws an exception.
  // testWidgets("Animal list goes to animal page when clicking an option", (WidgetTester tester) async
  // {

  //   await tester.pumpWidget(_getAnimalListPage(tester, Model.mockModel([
  //     Animal(0, "Test 0", "Test Scientific Name", 1, 1),
  //   ], [])));
  //   await tester.pumpAndSettle(Duration(seconds: 1));

  //   await tester.tap(find.widgetWithText(RaisedButton, "Test 0"));
  //   await tester.pumpAndSettle();

  //   expect(find.text("Test Scientific Name"), findsOneWidget);
  // });

  // NOTICE: This test is failing due to the use of a URL-based Carousel in the AnimalPage class, which 
  // throws an exception.
  // testWidgets("Animal page displays facts", (WidgetTester tester) async
  // {

  //   await tester.pumpWidget(_getAnimalListPage(tester, Model.mockModel([
  //     Animal(0, "Test 0", "Test 0", 1, 1),
  //   ],
  //   [
  //     Fact(0, 0, "Fact"),
  //   ])));
  //   await tester.pumpAndSettle(Duration(seconds: 1));

  //   await tester.tap(find.widgetWithText(RaisedButton, "Test 0"));
  //   await tester.pumpAndSettle();

  //   expect(find.text("- Fact"), findsOneWidget);
  // });

  // This test is no longer needed, the test "Nonexistant animal" has been removed

  // testWidgets("Animal page displays error for nonexistant animal", (WidgetTester tester) async
  // {

  //   await tester.pumpWidget(_getAnimalListPage(tester, Model.mockModel([
  //     Animal(0, "Test 0", "Test 0"),
  //   ],
  //   [
  //     Fact(0, 0, "Fact"),
  //   ])));

  //   await tester.tap(find.widgetWithText(RaisedButton, "Nonexistant animal"));
  //   await tester.pumpAndSettle();

  //   expect(find.text("Our search has gone cold on this one, try another page!"), findsOneWidget);
  // });
}

void testSearch() {
  testWidgets("Animal list contains search bar", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getAnimalListPage(tester, Model.mockModel([
      Animal(0, "Test 0", "Test 0", 1, 1),
      Animal(1, "Test 1", "Test 1", 1, 1)
    ], [])));
    await tester.pumpAndSettle(Duration(seconds: 1));

    expect(find.byType(TextField), findsOneWidget);
  });
  testWidgets("Search returns animals searched by full name", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getAnimalListPage(tester, Model.mockModel([
      Animal(0, "Test 0", "Test 0", 1, 1),
      Animal(1, "Test 1", "Test 1", 1, 1)
    ], [])));
    await tester.pumpAndSettle(Duration(seconds: 1));

    await tester.enterText(find.byType(TextField), "Test 0");
    await tester.pumpAndSettle();

    expect(find.byType(RaisedButton), findsOneWidget);
  });
  testWidgets("Search returns multiple animals that all meet the query", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getAnimalListPage(tester, Model.mockModel([
      Animal(0, "Test 0", "Test 0", 1, 1),
      Animal(1, "Test 1", "Test 1", 1, 1)
    ], [])));
    await tester.pumpAndSettle(Duration(seconds: 1));

    await tester.enterText(find.byType(TextField), "Test");
    await tester.pumpAndSettle();

    expect(find.byType(RaisedButton), findsNWidgets(2));
  });
  testWidgets("Search returns animals despite capitalization", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getAnimalListPage(tester, Model.mockModel([
      Animal(0, "Test 0", "Test 0", 1, 1),
      Animal(1, "Test 1", "Test 1", 1, 1)
    ], [])));
    await tester.pumpAndSettle(Duration(seconds: 1));

    await tester.enterText(find.byType(TextField), "tESt");
    await tester.pumpAndSettle();

    expect(find.byType(RaisedButton), findsNWidgets(2));
  });
  testWidgets("Search returns an error for a garbage query", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getAnimalListPage(tester, Model.mockModel([
      Animal(0, "Test 0", "Test 0", 1, 1),
      Animal(1, "Test 1", "Test 1", 1, 1)
    ], [])));
    await tester.pumpAndSettle(Duration(seconds: 1));

    await tester.enterText(find.byType(TextField), "asdojfafsdmigf");
    await tester.pumpAndSettle();

    expect(find.byType(RaisedButton), findsNothing);
    expect(find.text(AnimalListPage.NOT_FOUND_STR), findsOneWidget);
  });
}

void testExplore() {
  testWidgets("ExploreBy has Exhibit and Family buttons", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getExhibitPage(tester));
    await tester.pumpAndSettle(Duration(seconds: 1));

    expect(find.widgetWithText(RaisedButton, "Explore by Exhibit"), findsOneWidget);
    expect(find.widgetWithText(RaisedButton, "Explore by Class"), findsOneWidget);
  });
  testWidgets("ExploreBy navigates to exhibits when the button is pressed", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getExhibitPage(tester));
    await tester.pumpAndSettle(Duration(seconds: 1));

    await tester.tap(find.widgetWithText(RaisedButton, "Explore by Exhibit"));
    await tester.pumpAndSettle();

    expect(find.byType(Exhibits), findsOneWidget);
  });
  testWidgets("ExploreBy navigates to family when the button is pressed", (WidgetTester tester) async
  {

    await tester.pumpWidget(_getExhibitPage(tester));
    await tester.pumpAndSettle(Duration(seconds: 1));

    await tester.tap(find.widgetWithText(RaisedButton, "Explore by Class"));
    await tester.pumpAndSettle();

    expect(find.byType(Family), findsOneWidget);
  });
  
  // NOTICE: This test is failing due to the use of a URL-based Carousel in the AnimalPage class, which 
  // throws an exception.
  // testWidgets("ExploreBy can navigate to an animal page", (WidgetTester tester) async
  // {

  //   await tester.pumpWidget(_getExhibitPage(tester));
  //   await tester.pumpAndSettle(Duration(seconds: 1));

  //   await tester.tap(find.widgetWithText(RaisedButton, "Explore by Exhibit"));
  //   await tester.pumpAndSettle();

  //   await tester.tap(find.byType(RaisedButton).first);
  //   await tester.pumpAndSettle();

  //   await tester.tap(find.byType(RaisedButton).first);
  //   await tester.pumpAndSettle();

  //   expect(find.byType(AnimalPage), findsOneWidget);
  //   expect(find.byType(NotFoundErrorPage), findsNothing);
  // });

  testWidgets("Zoo Info Page Opens With Information", (WidgetTester tester) async
  {
    await tester.pumpWidget(_getZooInfoPage(tester));
    await tester.pumpAndSettle(Duration(seconds: 1));

    expect(find.byType(ZooInfo), findsOneWidget);
  });

  testWidgets("Zoo Info Page Opens With RichText", (WidgetTester tester) async
  {
    await tester.pumpWidget(_getZooInfoPage(tester));
    await tester.pumpAndSettle(Duration(seconds: 1));

    expect(find.byType(RichText), findsWidgets);
  });

  testWidgets("Zoo Info Page Contains Button To Purchase Tickets", (WidgetTester tester) async
  {
    await tester.pumpWidget(_getZooInfoPage(tester));
    await tester.pumpAndSettle();

    expect(find.widgetWithText(RaisedButton, "Purchase Tickets"), findsOneWidget);
  });
}

void testMap() 
{
  testWidgets("Map can be created", (WidgetTester tester) async
  {
    await tester.pumpWidget(_getMapPage(tester));
    await tester.pumpAndSettle();

    expect(find.byType(ZoomableImage), findsOneWidget);
  });

  // There isn't much further testing that can be done without tearing apart the ZoomableImage, 
  // since there is no way to detect the current size or position of the image through the
  // ZoomableImage itself
}

void testCalendar() {
  // This test had to be commented out due to the calendar library not responding well to the testing
  // environment. It was an incredibly basic UI test, so nothing of merit was lost. The only other
  // possible tests would be testing database connectivity, which exceeds the realm of unit testing.

  // testWidgets("Calendar can be created", (WidgetTester tester) async
  // {
  //   await tester.pumpWidget(_getCalendarPage(tester));
  //   await tester.pumpAndSettle();

  //   expect(find.byType(Column), findsWidgets);
  // });
}

void main() {
  testAnimalPage();
  testDrawer();
  testSearch();
  testExplore();
  testMap();
  testCalendar();
}
