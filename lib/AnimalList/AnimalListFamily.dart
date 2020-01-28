import 'package:flutter/material.dart';
import 'package:zoo_app/AnimalList/Families/Amphibia.dart';
import 'package:zoo_app/AnimalList/Families/Avian.dart';
import 'package:zoo_app/AnimalList/Families/Fish.dart';
import 'package:zoo_app/AnimalList/Families/Mammal.dart';
import 'package:zoo_app/AnimalList/Families/Reptilia.dart';
import 'package:zoo_app/controller/iControllerView.dart';

class AnimalListFamily extends StatefulWidget{
  AnimalListFamily({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;
  @override
  AnimalListFamilyState createState() => AnimalListFamilyState();
}

class AnimalListFamilyState extends State<AnimalListFamily>{


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
                        child: Text("Reptilia"),
                        onPressed: (){
                          Navigator.push(this.context, MaterialPageRoute(builder: (context) => Reptilia(controller: widget.controller)));
                        },
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: RaisedButton(
                        child: Text("Mammals"),
                        onPressed: (){
                          Navigator.push(this.context, MaterialPageRoute(builder: (context) => Mammal(controller: widget.controller)));
                        },
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: RaisedButton(
                        child: Text("Amphibia"),
                        onPressed: (){
                          Navigator.push(this.context, MaterialPageRoute(builder: (context) => Amphibia(controller: widget.controller)));
                        },
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: RaisedButton(
                        child: Text("Avian"),
                        onPressed: (){
                          Navigator.push(this.context, MaterialPageRoute(builder: (context) => Avian(controller: widget.controller)));
                        },
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: RaisedButton(
                        child: Text("Fish"),
                        onPressed: (){
                          Navigator.push(this.context, MaterialPageRoute(builder: (context) => Fish(controller: widget.controller)));
                        },
                      )
                  ),
                ] //children
            )
        )
    );
  }
}