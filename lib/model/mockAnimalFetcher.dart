// File created by Jordan Clark

import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/interfaces/iAnimalFetcher.dart';

// This class acts as an imitation of the database for the AnimalFetcher.
// Rather than talking to our database, it contains a local list of animals created at runtime.
class MockAnimalFetcher implements IAnimalFetcher
{
  List<Animal> animals = List();

  // This function is not in IAnimalFetcher; it exists to add animals to the list but should not be present in our final AnimalFetcher.
  void addAnimal(Animal animal)
  {
    animals.add(animal);
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

  @override
  Future<void> update() {
    return null;
  }

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

  @override
  Iterable<Animal> searchAnimalByExhibit(int requestedRegionId) {
    return getAllAnimals(where: (Animal animal) {
      return animal.exhibitid == requestedRegionId;
    });
  }

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

  @override
  Iterable<Animal> searchAnimalByClass(int requestedClassId) {
    return getAllAnimals(where: (Animal animal) {
      return animal.classid == requestedClassId;
    });
  }
}