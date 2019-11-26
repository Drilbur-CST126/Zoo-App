import 'package:zoo_app/model/interfaces/iAnimalFetcher.dart';
import 'package:zoo_app/model/mockAnimalFetcher.dart';

class Model
{
  IAnimalFetcher animalFetcher;

  Model(this.animalFetcher);

  static Model mockModel()
  {
    return Model(MockAnimalFetcher());
  }
}