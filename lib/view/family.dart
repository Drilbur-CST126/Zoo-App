import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/view/animalList.dart';

class Family extends StatefulWidget{
  Family({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;

  Widget _buttonMaker(BuildContext context, int familyid)
  {
    return RaisedButton(
      child: Text(familyid.toString()),
      autofocus: false,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalList(controller: controller, animalList: controller.searchAnimalByExhibit(familyid))));
      },
    );
  }

  List<Widget> _displayExhibits(BuildContext context)
  {
    var families = controller.getClassIds();
    families.sort(); //this line is pointless, as when it isn't numbers, it can be in any order. But it might work for letters as well
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