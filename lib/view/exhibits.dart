import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/view/animalList.dart';

class Exhibits extends StatefulWidget{
  Exhibits({Key key, @required this.controller, @required this.exhibits}) : super(key: key);

  final IControllerView controller;
  Map<int, String> exhibits;

  Widget _buttonMaker(BuildContext context, int exhibitid)
  {
    return RaisedButton(
      elevation: 5.0,
      child: Text(exhibits[exhibitid].toString()),
      autofocus: false,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalList(controller: controller,
            animalList: controller.searchAnimalByExhibit(exhibitid), title: exhibits[exhibitid].toString())));
      },
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Colors.yellow[200],
    );
  }

  List<Widget> _displayExhibits(BuildContext context)
  {
    var exhibits = controller.getExhibitIds();
    exhibits.sort();
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
        backgroundColor: Colors.lightGreenAccent[100],
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
