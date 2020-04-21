// app.dart
// File created by Jordan Clark
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'loadingWidget.dart';
import 'package:flutter/widgets.dart';


class AnimalListPage extends StatefulWidget{
  AnimalListPage({Key key, @required this.controller}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final IControllerView controller;

  Widget _animalButton(BuildContext context, String name, int animalId)
  {
    return RaisedButton(
      elevation: 5.0,
      child: Text(name),
      autofocus: false,
      onPressed: () {
        controller.goToAnimalPage(context, animalId);
      },
      color: Colors.yellowAccent[100],
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
    );
  }

  List<Widget> _displayAnimals(BuildContext context, String searchTerm)
  {
    var animals = searchTerm != null ? controller.searchAnimals(searchTerm) : controller.getAllAnimals();
    var buttons = List<Widget>();
    for (var animal in animals)
    {
      buttons.add(_animalButton(context, animal.commonName, animal.animalId));
    }
    return buttons;
  }

  @override
  State<StatefulWidget> createState() => AnimalListPageState();

}

class AnimalListPageState extends State<AnimalListPage>
{
  String searchTerm;
  bool updated = false;

  void _changeSearchTerm(String text) {
    setState(() {
      searchTerm = text;
    });
  }
  Widget _createPage(BuildContext context, [AsyncSnapshot<bool> snapshot]) {
    var listItems = <Widget>[];

    if (updated || snapshot.hasData) {
      listItems.add(TextField(onChanged: _changeSearchTerm,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
          hintText: "Search for animals at the zoo",
          hintStyle: TextStyle(fontWeight: FontWeight.bold,  fontSize: 20, color: Colors.red),

          icon: Icon(Icons.search),
        ),
      ));
      listItems.addAll(widget._displayAnimals(context, searchTerm));
      //listItems.add(widget._animalButton(context, "Nonexistant animal", -1));
    } else {
      listItems.add(LoadingWidget());
    }
    updated = true;
    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/grass.jpg"),
            fit: BoxFit.cover,

          )
        ),
        child: ListView(
          children: listItems,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!updated) {
      return FutureBuilder<bool>(
          future: () async {
            await widget.controller.updateAnimals();
            await widget.controller.updateFacts();
            return true;
          }(),
          builder: _createPage
      );
    } else {
      return _createPage(context);
    }
  }
}