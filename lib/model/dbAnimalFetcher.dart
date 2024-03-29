// File created by Jordan Clark

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/interfaces/iAnimalFetcher.dart';
import 'package:http/http.dart' as http;

// This class acts as an imitation of the database for the AnimalFetcher.
// Rather than talking to our database, it contains a local list of animals created at runtime.
class DbAnimalFetcher implements IAnimalFetcher
{
  List<Animal> animals = List();
  static const String url = "https://zooappwebapi.azurewebsites.net/api/animal";

  static Future<DbAnimalFetcher> create() async {
    var fetcher = DbAnimalFetcher();
    await fetcher.update();
    return fetcher;
  }

  // This function simply gets an animal by name from the list.
  @override
  Animal getAnimalByName(String name) {
    return animals.firstWhere((a) => a.commonName == name, orElse: () => null);
  }
  
  // This function simply gets an animal by id from the list.
  @override
  Animal getAnimalById(int id) {
    return animals.firstWhere((a) => a.animalId == id, orElse: () => null);
  }

  // This function gets all animals that fit a criteria, or gets all animals if no criteria is provided.
  @override
  Iterable<Animal> getAllAnimals({bool Function(Animal) where}) {
    if (where != null)
    {
      return animals.where(where);
    }
    else
    {
      return animals;
    }
  }

  // This function gets all animals that have a common name containing a given search query.
  @override
  Iterable<Animal> searchAnimals(String query) {
    return getAllAnimals(where: (Animal animal) {
      return animal.commonName.toLowerCase().contains(query.toLowerCase());
    });
  }

  // This function returns all animals that have the same region as the one passed in as the parameter
  @override
  Iterable<Animal> searchAnimalByExhibit(int requestedRegionId) {
    return getAllAnimals(where: (Animal animal) {
      return animal.exhibitid == requestedRegionId;
    });
  }

  @override
  Iterable<Animal> searchAnimalByClass(int requestedClassId) {
    return getAllAnimals(where: (Animal animal) {
      return animal.classid == requestedClassId;
    });
  }

  // This function will return a list of unique values for Exhibit_id within the database for all animals
  @override
  List<int> getExhibitIds() {
    var animals = getAllAnimals();
    List<int> exhibitIds = List();
    for (var animal in animals)
      {
        if (!exhibitIds.contains(animal.exhibitid))
          {
            exhibitIds.add(animal.exhibitid);
          }
      }
    return exhibitIds;
  }


  // This function will return a list of unique values for class_id within the database for all animals
  @override
  List<int> getClassIds() {
    var animals = getAllAnimals();
    List<int> classIds = List();
    for (var animal in animals)
    {
      if (!classIds.contains(animal.classid))
      {
        classIds.add(animal.classid);
      }
    }
    return classIds;
  }

  // This function contacts the database to get the animals, then calls decodeResponses to put them in 'animals'.
  Future<void> update() async {
    final response = await http.get(url, headers: {"Accept" : "application/json"});

    if (response.statusCode == 200) {
      debugPrint("update call");
      decodeResponses(json.decode(response.body));
    } else {
      throw Exception("Failed to connect to database.");
    }
  }

  // This function gets all animals from the json list and puts them in 'animals'.
  void decodeResponses(List<dynamic> json) {
    var newAnimals = List<Animal>();
    for (var jsonAnimal in json) {
      var animal = Animal(jsonAnimal["animal_id"], jsonAnimal["common_name"], jsonAnimal["scientific_name"], jsonAnimal["class_id"], jsonAnimal["exhibit_id"], jsonAnimal["tags"], new List<String>());
      newAnimals.add(animal);
    }
    animals = newAnimals;
  }
}