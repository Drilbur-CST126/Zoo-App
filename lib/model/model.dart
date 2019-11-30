import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/interfaces/iAnimalFetcher.dart';
import 'package:zoo_app/model/mockAnimalFetcher.dart';

class Model
{
  IAnimalFetcher animalFetcher;

  Model(this.animalFetcher);

  static Model mockModel(List<Animal> animals)
  {
    var mockAnimalFetcher = MockAnimalFetcher();
    for (var animal in animals)
    {
      mockAnimalFetcher.addAnimal(animal);
    }
    return Model(mockAnimalFetcher);
  }
}