import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/animalPage.dart';

class Africa extends StatefulWidget{
  Africa({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;

  var animals = [
    Animal(1, "African Bullfrog", "Pyxicephalus Adspersus"),
    Animal(2, "African Crested Porcupine", "Hystix Cristata"),
    Animal(3, "African Lungfish", "Protopterus Annectens"),
    Animal(4, "African Painted Dog", "Lycaon Pictus"),
    Animal(5, "African Red-Billed Hornbill", "Tockus Erythro"),
    Animal(6, "African Rock Python", "Python Sebae"),
    Animal(7, "African Slender-Snouted Crocodile", "Mecistops Cataphractus"),
    Animal(8, "African Spurred Tortoise", "Centrochelys Sulcata"),
    Animal(9, "Allen's Swamp Monkey", "Allenopithecus Nigroviridis")
  ];

  @override
  AfricaState createState() => AfricaState();
}

class AfricaState extends State<Africa>{
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
            title: Text('Africa')
        ),
        body: Center(
            child: Column(
                children: buttons
            )
        )
    );
  }
}