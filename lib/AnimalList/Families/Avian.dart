import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/animalPage.dart';

class Avian extends StatefulWidget{
  Avian({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;
  var animals = [
    Animal(5, "African Red-Billed Hornbill", "Tockus Erythro"),
  ];

  @override
  AvianState createState() => AvianState();
}

class AvianState extends State<Avian>{
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
            title: Text('Avian')
        ),
        body: Center(
            child: Column(
                children: buttons
            )
        )
    );
  }
}