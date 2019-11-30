// File created by Jordan Clark

import 'package:zoo_app/model/animal.dart';

abstract class IAnimalFetcher
{
  Animal getAnimalByName(String name);
  Animal getAnimalById(int id);
}