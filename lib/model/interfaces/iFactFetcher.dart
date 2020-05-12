// File created by Jordan Clark

import 'package:zoo_app/model/fact.dart';

// This interface defines a Fact fetcher, which communicates to some repository to get animal facts.
abstract class IFactFetcher
{
  Fact getFactByFactId(int factId);
  Iterable<Fact> getFactsByAnimalId(int animalId);
  Future<void> update();
}