

import 'package:test/test.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/mockAnimalFetcher.dart';

testMockAnimalFetcher()
{
  test("MockAnimalFetcher can add animals", ()
  {
    MockAnimalFetcher fetcher = MockAnimalFetcher();

    fetcher.addAnimal(Animal("Giraffe", "Giraffa camelopardalis"));

    expect(fetcher.animals[0].commonName, "Giraffe");
  });

  test("MockAnimalFetcher can retrieve animals", ()
  {
    MockAnimalFetcher fetcher = MockAnimalFetcher();
    fetcher.addAnimal(Animal("Giraffe", "Giraffa camelopardalis"));
    fetcher.addAnimal(Animal("Dog", "Canis lupus familiaris"));

    var animal = fetcher.getAnimalByName("Dog");

    expect(animal.commonName, "Dog");
  });
}

main()
{
  testMockAnimalFetcher();
}