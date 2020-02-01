import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/view/animalList.dart';

class Exhibits extends StatefulWidget{
  Exhibits({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;

  Widget _buttonMaker(BuildContext context, int exhibitid)
  {
    return RaisedButton(
      child: Text(exhibitid.toString()),
      autofocus: false,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalList(controller: controller, animalList: controller.searchAnimalByExhibit(exhibitid))));
      },
    );
  }

  List<Widget> _displayExhibits(BuildContext context)
  {
    var exhibits = controller.getExhibitIds();
    exhibits.sort(); //this line is pointless, as when it isn't numbers, it can be in any order. But it might work for letters as well
    var buttons = List<Widget>();
    for (var exhibitid in exhibits)
    {
      buttons.add(_buttonMaker(context, exhibitid));
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