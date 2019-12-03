// File created by Jordan Clark

import 'package:zoo_app/model/animal.dart';

// This interface defines an AnimalFetcher, which communicates with some repository to get animals.
// For example: Communicating with a database, or a mock repository made in-app for testing
abstract class IAnimalFetcher
{
  Animal getAnimalByName(String name);
  Animal getAnimalById(int id);
}