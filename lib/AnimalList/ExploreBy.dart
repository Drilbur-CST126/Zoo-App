import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/AnimalList/AnimalListFamily.dart';
import 'package:zoo_app/AnimalList/AnimalListRegion.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/view/loadingWidget.dart';

class ExploreBy extends StatefulWidget{
  ExploreBy({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;

  @override
  ExploreByState createState() => ExploreByState();
}

class ExploreByState extends State<ExploreBy>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<bool>(
        future: widget.controller.updateAnimals(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return LoadingWidget();
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: RaisedButton(
                    child: Text("Explore by Exhibit"),
                    onPressed: (){
                      Navigator.push(this.context, MaterialPageRoute(builder: (context) => AnimalListRegion(controller: widget.controller)));
                    },
                  )
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: RaisedButton(
                    child: Text("Explore by Family"),
                    onPressed: (){
                      Navigator.push(this.context, MaterialPageRoute(builder: (context) => AnimalListFamily(controller: widget.controller)));
                    },
                  )
                ),
              ] //children
            );
          }
        },
      )
          
    );
  }
}