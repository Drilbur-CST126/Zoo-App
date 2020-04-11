import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/view/exhibits.dart';
import 'package:zoo_app/view/family.dart';
import 'package:zoo_app/view/loadingWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ExploreBy extends StatefulWidget {
  ExploreBy({Key key, @required this.controller}) : super(key: key);

  final IControllerView controller;

  @override
  ExploreByState createState() => ExploreByState();
}

class ExploreByState extends State<ExploreBy> {
  static const String exhibitUrl =
      "https://zoocompanionwebapi.azurewebsites.net/api/exhibit";
  static const String classUrl =
      "https://zoocompanionwebapi.azurewebsites.net/api/class";
  Map<int, String> _exhibits;
  Map<int, String> _class;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        body: Container(
            width: 600,
            height: 600,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/giraffeclipart.jpg"),
              fit: BoxFit.fill,
            )),
            child: FutureBuilder<bool>(
              future: () async {
                bool result = await widget.controller.updateAnimals();
                await updateExhibit();
                await updateClass();
                return result;
              }(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return LoadingWidget();
                } else {
                  return Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.only(
                                left: 25.0,
                                top: 10.0,
                                right: 25.0,
                                bottom: 10.0),
                            height: 80,
                            width: 200,
                            child: RaisedButton(
                              elevation: 5.0,
                              child: Text("Explore by Exhibit",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {
                                Navigator.push(
                                    this.context,
                                    MaterialPageRoute(
                                        builder: (context) => Exhibits(
                                              controller: widget.controller,
                                              exhibits: _exhibits,
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
                            width: 200,
                            child: RaisedButton(
                              elevation: 5.0,
                              child: Text("Explore by Class",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {
                                Navigator.push(
                                    this.context,
                                    MaterialPageRoute(
                                        builder: (context) => Family(
                                              controller: widget.controller,
                                              classes: _class,
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

  Future<void> updateExhibit() async {
    final response =
        await http.get(exhibitUrl, headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      debugPrint("update call");
      decodeExhibitResponses(json.decode(response.body));
    } else {
      throw Exception("Failed to connect to database.");
    }
  }

  // This function gets all animals from the json list and puts them in 'animals'.
  void decodeExhibitResponses(List<dynamic> json) {
    var newAnimals = Map<int, String>();
    for (var jsonAnimal in json) {
      newAnimals[jsonAnimal["exhibit_id"]] = jsonAnimal["name"];
    }
    _exhibits = newAnimals;
  }

  Future<void> updateClass() async {
    final response =
        await http.get(classUrl, headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      debugPrint("update call");
      decodeClassResponses(json.decode(response.body));
    } else {
      throw Exception("Failed to connect to database.");
    }
  }

  // This function gets all animals from the json list and puts them in 'animals'.
  void decodeClassResponses(List<dynamic> json) {
    var newAnimals = Map<int, String>();
    for (var jsonAnimal in json) {
      newAnimals[jsonAnimal["class_id"]] = jsonAnimal["name"];
    }
    _class = newAnimals;
  }
}
