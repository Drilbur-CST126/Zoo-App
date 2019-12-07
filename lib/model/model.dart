import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/interfaces/iAnimalFetcher.dart';
import 'package:zoo_app/model/interfaces/iFactFetcher.dart';
import 'package:zoo_app/model/mockAnimalFetcher.dart';
import 'package:zoo_app/model/mockFactFetcher.dart';

import 'fact.dart';

// The overarching Model class of our Model-View-Container design pattern
// The implementation of the Model's behaviors is handled in helper classes
// The Model should largely exist to house all of these helper classes in one place for the Controller
class Model
{
  IAnimalFetcher animalFetcher;
  IFactFetcher factFetcher;

  Model(this.animalFetcher, this.factFetcher);

  // This static method exists to more quickly create a Model with only mock helper classes.
  // These mock classes are most helpful while the database is not available
  static Model mockModel(List<Animal> animals, List<Fact> facts)
  {
    var mockAnimalFetcher = MockAnimalFetcher();
    mockAnimalFetcher.animals = animals;
    var mockFactFetcher = MockFactFetcher();
    mockFactFetcher.facts = facts;
    return Model(mockAnimalFetcher, mockFactFetcher);
  }
}