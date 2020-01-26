import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/AnimalList/AnimalListFamily.dart';
import 'package:zoo_app/AnimalList/AnimalListRegion.dart';

class AnimalListHead extends StatefulWidget{
  @override
  AnimalListHeadState createState() => AnimalListHeadState();
}

class AnimalListHeadState extends State<AnimalListHead>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: RaisedButton(

                    child: Text("Search by Region"),
                    onPressed: (){
                      Navigator.push(this.context, MaterialPageRoute(builder: (context) => AnimalListRegion()));
                    },
                  )
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: RaisedButton(
                    child: Text("Search by Family"),
                    onPressed: (){
                      Navigator.push(this.context, MaterialPageRoute(builder: (context) => AnimalListFamily()));
                    },
                  )
                ),
              ] //children
          )
    );
  }
}