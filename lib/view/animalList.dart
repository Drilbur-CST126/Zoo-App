import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';

class AnimalList extends StatefulWidget{
  AnimalList({Key key, @required this.controller, @required this.animalList, @required this.title}) : super(key: key);

  final IControllerView controller;
  final Iterable<Animal> animalList;
  final String title;

  Widget _animalButton(BuildContext context, Animal animal)
  {
    return RaisedButton(
      child: Text(animal.commonName),
      autofocus: false,
      onPressed: () {
        controller.goToAnimalPage(context, animal.animalId);
      },
    );
  }

  List<Widget> _displayAnimals(BuildContext context)
  {
    var buttons = List<Widget>();
    for (var animal in animalList)
    {
      buttons.add(_animalButton(context, animal));
    }
    return buttons;
  }

  @override
  AnimalListState createState() => AnimalListState();
}

class AnimalListState extends State<AnimalList>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.title)
        ),
        body: Center(
            child: ListView(
                children: widget._displayAnimals(context)
            )
        )
    );
  }
}