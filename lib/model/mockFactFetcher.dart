// File created by Jordan Clark

import 'package:zoo_app/model/fact.dart';
import 'package:zoo_app/model/interfaces/iFactFetcher.dart';

class MockFactFetcher implements IFactFetcher
{
  List<Fact> facts = List();

  void addFact(Fact fact)
  {
    facts.add(fact);
  }

  @override
  Fact getFactByFactId(int factId) {
    return facts.singleWhere((fact) => fact.factId == factId, orElse: () => null);
  }

  @override
  Iterable<Fact> getFactsByAnimalId(int animalId) {
    return facts.where((fact) => fact.animalId == animalId).toList();
  }
  
}