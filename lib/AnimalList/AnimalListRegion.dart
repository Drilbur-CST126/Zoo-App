import 'package:flutter/material.dart';
import 'package:zoo_app/AnimalList/Regions/Africa.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'Regions/America.dart';

class AnimalListRegion extends StatefulWidget{
  AnimalListRegion({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;
  @override
  AnimalListRegionState createState() => AnimalListRegionState();
}

class AnimalListRegionState extends State<AnimalListRegion>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Region')
        ),
        body: Center(
            child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      child: RaisedButton(
                        child: Text("Africa"),
                        onPressed: (){
                          Navigator.push(this.context, MaterialPageRoute(builder: (context) => Africa(controller: widget.controller,)));
                        },
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: RaisedButton(
                        child: Text("America"),
                        onPressed: (){
                          Navigator.push(this.context, MaterialPageRoute(builder: (context) => America(controller: widget.controller,)));
                        },
                      )
                  ),
                ] //children
            )
        )
    );
  }
}