import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:zoo_app/model/fact.dart';
import 'interfaces/iFactFetcher.dart';
import 'package:http/http.dart' as http;


class DbFactFetcher implements IFactFetcher {
  @override
  Fact getFactByFactId(int factId) {
    return facts.firstWhere((element) => element.factId == factId);
  }

  @override
  Iterable<Fact> getFactsByAnimalId(int animalId) {
    return facts.where((fact) => fact.animalId == animalId).toList();
  }

  List<Fact> facts = List();
  static const String url = "https://zooappwebapi.azurewebsites.net/api/fact";

  static Future<DbFactFetcher> create() async {
    var fetcher = DbFactFetcher();
    await fetcher.update();
    return fetcher;
  }

// This function contacts the database to get the animals, then calls decodeResponses to put them in 'animals'.
  Future<void> update() async {
    final response = await http.get(
        url, headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      decodeResponses(json.decode(response.body));
    } else {
      throw Exception("Failed to connect to database.");
    }
  }

// This function gets all animals from the json list and puts them in 'animals'.
  void decodeResponses(List<dynamic> json) {
    var newFacts = List<Fact>();
    for (var jsonFact in json) {
      var fact = Fact(jsonFact["fact_id"], jsonFact["animal_id"],
          jsonFact["fact1"]);
      newFacts.add(fact);
    }
    facts = newFacts;
  }
}