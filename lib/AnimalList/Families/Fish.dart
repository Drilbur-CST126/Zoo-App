import 'package:flutter/material.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/animalPage.dart';

class Fish extends StatefulWidget{
  var animals = [
    Animal(3, "African Lungfish", "Protopterus Annectens")
  ];

  @override
  FishState createState() => FishState();
}

class FishState extends State<Fish>{
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
            title: Text('Fish')
        ),
        body: Center(
            child: Column(
                children: buttons
            )
        )
    );
  }
}