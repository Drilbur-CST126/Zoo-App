import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';

class Exhibits extends StatefulWidget{
  Exhibits({Key key, @required this.controller, @required this.buildcontext, @required this.parameter}) : super(key: key);

  final IControllerView controller;
  final String buildcontext;
  final int parameter;

  Widget _animalButton(BuildContext context, String name, int animalId)
  {
    return RaisedButton(
      child: Text(name),
      autofocus: false,
      onPressed: () {
        controller.goToAnimalPage(context, animalId);
      },
    );
  }

  List<Widget> _displayAnimals(BuildContext context)
  {
    var animals = controller.searchAnimalByRegion(1);  //this will be where changes need to be made for the database pull
    var buttons = List<Widget>();
    for (var animal in animals)
    {
      buttons.add(_animalButton(context, animal.commonName, animal.animalId));
    }
    return buttons;
  }

  @override
  ExhibitsState createState() => ExhibitsState();
}

class ExhibitsState extends State<Exhibits>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Africa')
        ),
        body: Center(
            child: ListView(
                children: widget._displayAnimals(context)
            )
        )
    );
  }
}