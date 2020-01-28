import 'package:flutter/material.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/animalPage.dart';

class America extends StatefulWidget{
  var animals = [
    Animal(10, "American Beaver", "Castor Canadensis")
  ];

  @override
  AmericaState createState() => AmericaState();
}

class AmericaState extends State<America>{
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
            title: Text('America')
        ),
        body: Center(
            child: Column(
                children: buttons
            )
        )
    );
  }
}