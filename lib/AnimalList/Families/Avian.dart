import 'package:flutter/material.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/animalPage.dart';

class Avian extends StatefulWidget{
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
          Navigator.push(this.context, MaterialPageRoute(builder: (context) => AnimalPage()));
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