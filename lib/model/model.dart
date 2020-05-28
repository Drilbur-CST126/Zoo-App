import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/interfaces/iAnimalFetcher.dart';
import 'package:zoo_app/model/interfaces/iClassExhibitFetcher.dart';
import 'package:zoo_app/model/interfaces/iFactFetcher.dart';
import 'package:zoo_app/model/mockAnimalFetcher.dart';
import 'package:zoo_app/model/mockClassExhibitFetcher.dart';
import 'package:zoo_app/model/mockFactFetcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


import 'fact.dart';

// The overarching Model class of our Model-View-Container design pattern
// The implementation of the Model's behaviors is handled in helper classes
// The Model should largely exist to house all of these helper classes in one place for the Controller
class Model
{
  IAnimalFetcher animalFetcher;
  IFactFetcher factFetcher;
  IClassExhibitFetcher classExhibitFetcher;

  Model(this.animalFetcher, this.factFetcher, this.classExhibitFetcher);

  // This static method exists to more quickly create a Model with only mock helper classes.
  // These mock classes are most helpful while the database is not available
  static Model mockModel(List<Animal> animals, List<Fact> facts, [Map<int, String> classes, Map<int, String> exhibits])
  {
    var mockAnimalFetcher = MockAnimalFetcher();
    mockAnimalFetcher.animals = animals;
    var mockFactFetcher = MockFactFetcher();
    mockFactFetcher.facts = facts;
    var mockClassExhibitFetcher = MockClassExhibitFetcher(classes, exhibits);
    return Model(mockAnimalFetcher, mockFactFetcher, mockClassExhibitFetcher);
  }

  Future<void> updatePhotos() async {
    final response =
    await http.get('https://zooappwebapi.azurewebsites.net/api/picture', headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      decodePictureResponses(json.decode(response.body));
    } else {
      throw Exception("Failed to connect to database.");
    }
  }

  // This function gets all animals from the json list and puts them in 'animals'.
  void decodePictureResponses(List<dynamic> json) {
    List<Animal> animals = animalFetcher.getAllAnimals();
    for (var picture in json){
      animals.firstWhere((element) => element.animalId == picture["animal_id"]).pictureURL.add(picture["picture_url"]);
    }
  }
}