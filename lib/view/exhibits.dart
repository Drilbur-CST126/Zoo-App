import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/animalList.dart';

class Exhibits extends StatefulWidget{
  Exhibits({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;

  Widget _buttonMaker(BuildContext context, Animal animallist)
  {
    return RaisedButton(
      child: Text("Something"),
      autofocus: false,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalList(controller: controller, animalList: animallist)));
      },
    );
  }

  List<Widget> _displayExhibits(BuildContext context)
  {
    var exhiibits = controller.searchAnimalByRegion(1);  //this will be where changes need to be made for the database pull
    var buttons = List<Widget>();
    for (var animal in exhiibits)
    {
      buttons.add(_buttonMaker(context, animal));
    }
    return buttons;
  }

  @override
  ExhibitsState createState() => ExhibitsState();
}

class ExhibitsState extends State<Exhibits>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Exhibits')
        ),
        body: Center(
            child: ListView(
                children: widget._displayExhibits(context)
            )
        )
    );
  }
}