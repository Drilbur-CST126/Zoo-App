// File created by Jordan Clark

import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/interfaces/iAnimalFetcher.dart';

class MockAnimalFetcher implements IAnimalFetcher
{
  List<Animal> animals = List();

  void addAnimal(Animal animal)
  {
    animals.add(animal);
  }

  @override
  Animal getAnimalByName(String name) {
    return animals.firstWhere((a) => a.commonName == name, orElse: () => null);
  }
  
  @override
  Animal getAnimalById(int id) {
    return animals.firstWhere((a) => a.animalId == id, orElse: () => null);
  }
}