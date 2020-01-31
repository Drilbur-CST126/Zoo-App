import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/animalPage.dart';

class Mammal extends StatefulWidget{
  Mammal({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;

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
    var animals = controller.getAllAnimals();  //this will be where changes need to be made for the database pull
    var buttons = List<Widget>();
    for (var animal in animals)
    {
      buttons.add(_animalButton(context, animal.commonName, animal.animalId));
    }
    return buttons;
  }


  @override
  MammalState createState() => MammalState();
}

class MammalState extends State<Mammal>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Amphibia')
        ),
        body: Center(
            child: ListView(
                children: widget._displayAnimals(context)
            )
        )
    );
  }
}