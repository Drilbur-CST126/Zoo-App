import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/view/exhibits.dart';
import 'package:zoo_app/view/family.dart';
import 'package:zoo_app/view/loadingWidget.dart';

class ExploreBy extends StatefulWidget{
  ExploreBy({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;

  @override
  ExploreByState createState() => ExploreByState();
}

<<<<<<< HEAD:lib/AnimalList/AnimalListHead.dart
class AnimalListHeadState extends State<AnimalListHead>{
=======
class ExploreByState extends State<ExploreBy>{


>>>>>>> 8b139b05755a462431d2f3e30e0afdb8f8142c8c:lib/view/ExploreBy.dart
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
                      Navigator.push(this.context, MaterialPageRoute(builder: (context) => Exhibits(controller: widget.controller)));
                    },
                  )
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: RaisedButton(
                    child: Text("Explore by Class"),
                    onPressed: (){
                      Navigator.push(this.context, MaterialPageRoute(builder: (context) => Family(controller: widget.controller)));
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