import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/animalPage.dart';

class Amphibia extends StatefulWidget{
  Amphibia({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;

  var animals = [
    Animal(1, "African Bullfrog", "Pyxicephalus Adspersus"),
  ];

  @override
  AmphibiaState createState() => AmphibiaState();
}

class AmphibiaState extends State<Amphibia>{
  @override
  Widget build(BuildContext context) {
    var buttons = <Widget>[];
    for(int i = 0; i < widget.animals.length; ++i)
    {
      buttons.add(RaisedButton(
        child: Text(widget.animals[i].commonName),
        onPressed: (){
          widget.controller.goToAnimalPage(context, widget.animals[i].animalId);
        },
      ));
    }
    return Scaffold(
        appBar: AppBar(
            title: Text('Amphibia')
        ),
        body: Center(
            child: Column(
                children: buttons
            )
        )
    );
  }
}