import 'package:flutter/material.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/animalPage.dart';

class Reptilia extends StatefulWidget{
  var animals = [
    Animal(6, "African Rock Python", "Python Sebae"),
    Animal(7, "African Slender-Snouted Crocodile", "Mecistops Cataphractus"),
    Animal(8, "African Spurred Tortoise", "Centrochelys Sulcata")
  ];

  @override
  RetilitaState createState() => RetilitaState();
}

class RetilitaState extends State<Reptilia>{
  @override
  Widget build(BuildContext context) {
    var buttons = <Widget>[];
    for(int i = 0; i < widget.animals.length; ++i)
    {
      buttons.add(RaisedButton(
        child: Text(widget.animals[i].commonName),
        onPressed: (){
          Navigator.push(this.context, MaterialPageRoute(builder: (context) => AnimalPage()));
        },
      ));
    }
    return Scaffold(
        appBar: AppBar(
            title: Text('Reptilia')
        ),
        body: Center(
            child: Column(
                children: buttons
            )
        )
    );
  }
}