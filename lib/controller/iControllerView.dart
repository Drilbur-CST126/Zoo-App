// File created by Jordan Clark

// This is an interface for the View classes to refer to the Controller with.
// This should only contain the classes the View will call, the View should not know the implementation details of the Controller
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/fact.dart';

abstract class IControllerView
{
  goToAnimalPage(dynamic context, int animalId);
  List<Fact> getAllFactsForAnimal(int animalId);
  Iterable<Animal> getAllAnimals({bool Function(Animal) where});
  Future<bool> updateAnimals();
  Iterable<Animal> searchAnimals(String searchTerm);
  Iterable<Animal> searchAnimalByExhibit(int requestedregionid);
  List<int> getExhibitIds();
  List<int> getClassIds();
}