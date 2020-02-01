import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';

class AnimalList extends StatefulWidget{
  AnimalList({Key key, @required this.controller, @required this.animalList}) : super(key: key);

  final IControllerView controller;
  final Iterable<Animal> animalList;

  Widget _animalButton(BuildContext context, String name)
  {
    return RaisedButton(
      child: Text(name),
      autofocus: false,
      onPressed: () {
        //need to create a pass to the new page
      },
    );
  }

  List<Widget> _displayAnimals(BuildContext context)
  {
    var buttons = List<Widget>();
    for (var animal in animalList)
    {
      buttons.add(_animalButton(context, animal.commonName));
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
            title: Text('Exhibits')
        ),
        body: Center(
            child: ListView(
                children: widget._displayAnimals(context)
            )
        )
    );
  }
}