// File created by Jordan Clark

import 'package:zoo_app/model/animal.dart';

// This interface defines an AnimalFetcher, which communicates with some repository to get animals.
// For example: Communicating with a database, or a mock repository made in-app for testing
abstract class IAnimalFetcher
{
  Animal getAnimalByName(String name);
  Iterable<Animal> searchAnimals(String query);
  Animal getAnimalById(int id);
  Iterable<Animal> getAllAnimals({bool Function(Animal) where});
  Iterable<Animal> searchAnimalByRegion(int requestedregionid);
  Future<void> update();
}