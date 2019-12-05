// app.dart
// File created by Jordan Clark
import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';

class ZooApp extends StatelessWidget {
  final IControllerView controller;

  ZooApp(this.controller);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page', controller: controller),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title, @required this.controller}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final IControllerView controller;

  Widget _animalButton(BuildContext context, String name, int animalId)
  {
    return FlatButton(
      child: Text(name),
      autofocus: false,
      onPressed: () {
        controller.goToAnimalPage(context, animalId);
      },
    );
  }

  List<Widget> _displayAnimals(BuildContext context)
  {
    var animals = controller.getAllAnimals();
    var buttons = List<Widget>();
    for (var animal in animals)
    {
      buttons.add(_animalButton(context, animal.commonName, animal.animalId));
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    var animalButtons = _displayAnimals(context);
    animalButtons.add(_animalButton(context, "Nonexistant animal", -1));
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: animalButtons
        ),
      ),
    );
  }
}
