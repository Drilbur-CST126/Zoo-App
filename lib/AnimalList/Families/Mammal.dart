import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/animalPage.dart';

class Mammal extends StatefulWidget{
  Mammal({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;
  var animals = [
    Animal(2, "African Crested Porcupine", "Hystix Cristata"),
    Animal(4, "African Painted Dog", "Lycaon Pictus"),
    Animal(10, "American Beaver", "Castor Canadensis"),
    Animal(9, "Allen's Swamp Monkey", "Allenopithecus Nigroviridis")
  ];

  @override
  MammalState createState() => MammalState();
}

class MammalState extends State<Mammal>{
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