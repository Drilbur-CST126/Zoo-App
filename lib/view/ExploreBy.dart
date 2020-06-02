import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/view/exhibits.dart';
import 'package:zoo_app/view/family.dart';
import 'package:zoo_app/view/loadingWidget.dart';


class ExploreBy extends StatefulWidget {
  ExploreBy({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;

  @override
  ExploreByState createState() => ExploreByState();
}

class ExploreByState extends State<ExploreBy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        body: Container(
            width: 400,
            height: 700,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/giraffeclipart.jpg"),
              fit: BoxFit.fitWidth,
            )),
            child: FutureBuilder<bool>(
              future: () async {
                bool result = await widget.controller.updateAnimals();
                await widget.controller.updateFacts();
                await widget.controller.updatePhotos();
                await widget.controller.updateClassesAndExhibits();
                return result;
              }(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return LoadingWidget();
                } else {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.only(
                                left: 25.0,
                                top: 10.0,
                                right: 25.0,
                                bottom: 10.0),
                            height: 80,
                            width: 300,
                            child: RaisedButton(
                              elevation: 5.0,
                              child: Text("Explore by Exhibit",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20)),
                              onPressed: () {
                                Navigator.push(
                                    this.context,
                                    MaterialPageRoute(
                                        builder: (context) => Exhibits(
                                              controller: widget.controller,
                                              exhibits: widget.controller.getExhibits(),
                                            )));
                              },
                              color: Colors.orangeAccent,
                              textColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                  side: BorderSide(color: Colors.yellow)),
                            )),
                        Container(
                            padding: EdgeInsets.only(
                                left: 25.0,
                                top: 10.0,
                                right: 25.0,
                                bottom: 10.0),
                            height: 80,
                            width: 300,
                            child: RaisedButton(
                              elevation: 5.0,
                              child: Text("Explore by Class",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20)),
                              onPressed: () {
                                Navigator.push(
                                    this.context,
                                    MaterialPageRoute(
                                        builder: (context) => Family(
                                              controller: widget.controller,
                                              classes: widget.controller.getClasses(),
                                            )));
                              },
                              color: Colors.orangeAccent[200],
                              textColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                  side: BorderSide(color: Colors.yellow)),
                            )),
                      ] //children
                      );
                }
              },
            )));
  }
}
