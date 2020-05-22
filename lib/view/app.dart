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

  static Widget _inContainer(Widget child)
  {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: child,
    );
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
      listItems.add(
        TextField(
          onChanged: _changeSearchTerm,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
            hintText: "Search for animals at the zoo",
            hintStyle: TextStyle(fontWeight: FontWeight.bold,  fontSize: 20, color: Colors.red),
            icon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
          ),
          style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 20, color: Colors.red),

      ));

      var displayItems = widget._displayAnimals(context, searchTerm);
      if (displayItems.length > 0) {
        listItems.addAll(displayItems);
      } else {
        listItems.add(AnimalListPage._inContainer(
          Column(
            children: <Widget>[
              Text("Our search has gone cold on this one, try another animal!"),
              Image(image: AssetImage("assets/penguin_lost.png"),),
            ],
          )
        ));
      }
      //listItems.add(widget._animalButton(context, "Nonexistant animal", -1));
    } else {
      listItems.add(AnimalListPage._inContainer(LoadingWidget()));
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
            await widget.controller.updatePhotos();
            return true;
          }(),
          builder: _createPage
      );
    } else {
      return _createPage(context);
    }
  }
}