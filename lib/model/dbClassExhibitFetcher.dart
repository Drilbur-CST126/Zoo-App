import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:zoo_app/model/interfaces/iClassExhibitFetcher.dart';

class DbClassExhibitFetcher extends IClassExhibitFetcher
{
  static const String exhibitUrl =
      "https://zooappwebapi.azurewebsites.net/api/exhibit";
  static const String classUrl =
      "https://zooappwebapi.azurewebsites.net/api/class";
  Map<int, String> _exhibits;
  Map<int, String> _class;

  Future<void> updateExhibit() async {
    final response =
        await http.get(exhibitUrl, headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      //debugPrint("update call");
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
      //debugPrint("update call");
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

  @override
  Map<int, String> getClasses() {
    return _class;
  }

  @override
  Map<int, String> getExhibits() {
    return _exhibits;
  }

  @override
  Future<void> update() async {
    await updateClass();
    await updateExhibit();
  }
  
}