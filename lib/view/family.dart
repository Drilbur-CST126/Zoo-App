import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/view/animalList.dart';

class Family extends StatefulWidget{
  Family({Key key, @required this.controller, @required this.classes}) : super(key: key);
  final Map<int, String> classes;
  final IControllerView controller;

  Widget _buttonMaker(BuildContext context, int familyId)
  {
    return RaisedButton(
      elevation: 5.0,
      child: Text(classes[familyId].toString()),
      autofocus: false,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalList(controller: controller,
            animalList: controller.searchAnimalByClass(familyId), title: classes[familyId].toString())));
      },
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Colors.orange[200],
    );
  }

  List<Widget> _displayExhibits(BuildContext context)
  {
    var families = controller.getClassIds();
    //families.sort();
    families.sort((a, b) => classes [a].compareTo(classes[b]));
    var buttons = List<Widget>();
    for (var familyId in families)
    {
      buttons.add(_buttonMaker(context, familyId));
    }
    return buttons;
  }

  @override
  FamilyState createState() => FamilyState();
}

class FamilyState extends State<Family>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreenAccent[100],
        appBar: AppBar(
            title: Text('Classes')
        ),
        body: Center(
            child: ListView(
                children: widget._displayExhibits(context)
            )
        )
    );
  }
}