import 'package:flutter/material.dart';
import 'package:zoo_app/AnimalList/Africa.dart';

class AnimalListRegion extends StatefulWidget{
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
                          Navigator.push(this.context, MaterialPageRoute(builder: (context) => Africa()));
                        },
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: RaisedButton(
                        child: Text("America"),
                        onPressed: (){

                        },
                      )
                  ),
                ] //children
            )
        )
    );
  }
}